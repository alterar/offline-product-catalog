package com.farfetch.fflink.offline-product-catalog.server;

import com.farfetch.fflink.base.service.server.ServerBootstrapper;
import com.farfetch.fflink.camelserviceboilerplate.config.ApplicationPropertyOverrideConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.context.annotation.Import;

@Import(ApplicationPropertyOverrideConfiguration.class)
public class Offline-Product-CatalogBootstrapper extends ServerBootstrapper<Offline-Product-CatalogBootstrapper> {
    
    public static void main(String[] args) {
        SpringApplication.run(Offline-Product-CatalogBootstrapper.class, args);
    }

    @Override
    protected ApiInformation getApiInformation() {
        return new ApiInformation("Offline-Product-Catalog", "Offline-Product-Catalog", 1.0);
    }

}
