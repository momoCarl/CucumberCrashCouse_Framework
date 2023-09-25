package runner;

import org.testng.annotations.DataProvider;

public interface RunnerInt {
    @DataProvider(parallel = true)
    Object[][] scennario();
}
