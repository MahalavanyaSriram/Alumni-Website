import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AngularMaterialModule } from './angular-material/angular-material.module';
import { LogInComponent } from './_components/log-in/log-in.component';
import { HeaderComponent } from './_components/header/header.component';
import { AllService } from './_service/all.service';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FlexLayoutModule } from '@angular/flex-layout';
import { DirectoryComponent } from './_components/directory/directory.component';
import { EventsComponent } from './_components/events/events.component';
import { JobpostingsComponent } from './_components/jobpostings/jobpostings.component';
import { ProfileComponent } from './_components/profile/profile.component';

@NgModule({
  declarations: [
    AppComponent,
    LogInComponent,
    HeaderComponent,
    DirectoryComponent,
    EventsComponent,
    JobpostingsComponent,
    ProfileComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    AngularMaterialModule,
    FlexLayoutModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule
  ],
  providers: [AllService],
  bootstrap: [AppComponent]
})
export class AppModule { }
