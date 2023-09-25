package runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import org.testng.annotations.DataProvider;

@CucumberOptions(features = "src/test/resources",
        glue = "org/opencart/stepdefs",
        plugin = {"pretty", "html:target/cucumber-reports", "json:target/cucumber.json"},
        monochrome = true,
        publish = true
)

public class TestRunner extends AbstractTestNGCucumberTests implements RunnerInt {
    @Override
    @DataProvider(parallel = true)
    public Object[][] scennario() {
        return super.scenarios();
    }
}
