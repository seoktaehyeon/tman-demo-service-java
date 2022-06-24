package work.tman.svcjava;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StatusController {

	@GetMapping("/api/status")
	public Status status() {
		return new Status("healthy");
	}
}
