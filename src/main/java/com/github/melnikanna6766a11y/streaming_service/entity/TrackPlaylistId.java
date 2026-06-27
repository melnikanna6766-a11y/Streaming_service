package com.github.melnikanna6766a11y.streaming_service.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Embeddable
@Getter
@Setter
@EqualsAndHashCode
public class TrackPlaylistId implements Serializable {
    @Column(name = "track_id")
    private Long trackId;

    @Column(name = "playlist_id")
    private Long playlistId;
}
