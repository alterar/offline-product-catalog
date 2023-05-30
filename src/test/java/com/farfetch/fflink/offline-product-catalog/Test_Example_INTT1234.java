package com.farfetch.fflink.offline-product-catalog;

import com.farfetch.fflink.offline-product-catalog.server.Offline-Product-CatalogBootstrapper;
import com.farfetch.fflink.testPlatform.camel.CamelTestExecutorImpl;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest(classes = Offline-Product-CatalogBootstrapper.class, webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class Test_Example_INTT1234 extends CamelTestExecutorImpl {

    @Test
    public void t1_dummy_error() throws Exception {
        Assertions.assertTrue(executeTestCase());
    }

}
