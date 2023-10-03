-- +goose Up

CREATE TABLE feed_follows (
  id UUID PRIMARY KEY,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  feed_Id UUID NOT NULL REFERENCES feeds(id) ON DELETE CASCADE,
  UNIQUE(user_id, feed_Id)
);

-- +goose Down

DROP TABLE feed_follows;
