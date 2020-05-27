import { Component, OnInit } from '@angular/core';
import { AllService } from '../../_service/all.service';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { first } from 'rxjs/operators';


@Component({
  selector: 'app-log-in',
  templateUrl: './log-in.component.html',
  styleUrls: ['./log-in.component.css']
})
export class LogInComponent implements OnInit {
  loading: boolean;
  returnUrl: any;

  constructor(private allService: AllService, private router: Router, private route: ActivatedRoute) { }

  ngOnInit() {
    // reset login status
    // get return url from route parameters or default to '/'
    this.returnUrl = this.route.snapshot.queryParams['returnUrl'] || '/';

  }
  loginForm = new FormGroup({
    email: new FormControl('',[Validators.required]),
    password: new FormControl('',[Validators.required])

  });
  login(loginformValue: FormGroup) {
    this.loading = true;
    this.allService.login({
      email: loginformValue.value.email,
      password: loginformValue.value.password
    })
    .pipe(first())
    .subscribe(
        data => {
            this.router.navigate(['/directory']);
        },
        error => {
        this.loginForm.reset();
            this.loading = false;
        });
  }

}
