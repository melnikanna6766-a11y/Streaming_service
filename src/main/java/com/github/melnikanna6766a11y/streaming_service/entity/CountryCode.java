package com.github.melnikanna6766a11y.streaming_service.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@Entity
@Table(name = "countries_codes")
@Getter
@Setter
@NoArgsConstructor
public class CountryCode {
    @Id
    private String code;

    @Column
    private String name;

    @Column(name = "is_supported")
    private boolean isSupported;

    @OneToMany(mappedBy = "countryCode", fetch = FetchType.LAZY)
    private Set<Profile> profiles;
}
