package rtc

import (
	"time"

	"github.com/livekit/protocol/auth"
)

func NewLiveKit(key, secret, url string) *LiveKit {
	return &LiveKit{
		token: auth.NewAccessToken(key, secret),
		url:   url,
	}
}

type LiveKit struct {
	token *auth.AccessToken
	url   string
}

func (l *LiveKit) GetLiveKitURL() string {
	return l.url
}

func (l *LiveKit) GetLiveKitToken(room string, identity string) (string, error) {
	canUpdateOwnMetadata := true
	grant := &auth.VideoGrant{
		RoomJoin:             true,
		Room:                 room,
		CanUpdateOwnMetadata: &canUpdateOwnMetadata,
	}
	return l.token.AddGrant(grant).SetIdentity(identity).SetValidFor(time.Hour).ToJWT()
}
