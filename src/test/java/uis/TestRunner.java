package uis;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
    @Karate.Test
	Karate getUserTest() {
		return Karate.run("uiTest").tags("chrome1").relativeTo(getClass());
	}
}
