import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LogInComponent } from './_components/log-in/log-in.component';
import { JobpostingsComponent } from './_components/jobpostings/jobpostings.component';
import { EventsComponent } from './_components/events/events.component';
import { DirectoryComponent } from './_components/directory/directory.component';
import { ProfileComponent } from './_components/profile/profile.component';


const routes: Routes = [
  { path: '', pathMatch: 'full', redirectTo: '/login' },
  { path: 'login', component: LogInComponent },
  { path: 'directory', component: DirectoryComponent },
  { path: 'events', component: EventsComponent },
  { path: 'jobpostings', component: JobpostingsComponent },
  { path: 'profile', component: ProfileComponent },

];


@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
