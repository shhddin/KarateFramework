package apis;

import com.intuit.karate.junit5.Karate;

public class TestRunner_gorest_get_user {

	@Karate.Test 
	Karate getUserTest() {
		return Karate.run("goRestGetUsers").tags("negative").relativeTo(getClass());
	}
}
