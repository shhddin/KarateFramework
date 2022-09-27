package apis;

import com.intuit.karate.junit5.Karate;

public class TestRunner_jsonholder_Post_user {

	@Karate.Test 
	Karate getUserTest() {
		return Karate.run("jsonHolderPostUser").tags("smoke").relativeTo(getClass());
	}
}
