import { Injectable } from '@angular/core';
import { HttpHeaders } from '@angular/common/http';
import { HttpClient } from '@angular/common/http'
import { Observable, of, from} from 'rxjs';
import { map } from 'rxjs/operators';
import { Alumni } from '../_model/alumni';
import { JobPostings } from '../_model/jobpostings';
import { Events } from '../_model/event';
import { Alumnis } from '../_model/alumnis';

@Injectable()
export class AllService {
    constructor(private http: HttpClient) { }
    loginStatus: boolean = false;
    userId: Number;
    private options = { headers: new HttpHeaders().append('Content-Type', 'application/json') };

    login(user: { email: string, password: string }): Observable<void> {
        console.log('inside login');
        return this.http.post<any>(`http://localhost:8080/authenticate/login`, user, this.options).pipe(map((response: Response) => {
            this.loginStatus = true;
            this.userId = response['userId'];
        }));
    }      
    logout(){
      this.loginStatus = false;
    } 
    getAllAlumni(): Observable<Alumnis[]> {
        const getAllUrl = `http://localhost:8080/alumni/getAllAlumni/${this.userId}`;
        return this.http.get(getAllUrl,this.options).pipe(map(response => response as Alumnis[]));
      }
      getUserDetails(): Observable<Alumni> { 
        const getAllUrl = `http://localhost:8080/alumni/getAlumniDetail/${this.userId}`;
        return this.http.get(getAllUrl,this.options).pipe(map(response => response as Alumni));
      
      }
      getAllJobpostings(): Observable<JobPostings[]> {
        const getAllUrl = `http://localhost:8080/alumni/getAllJobPostings`;
        return this.http.get(getAllUrl,this.options).pipe(map(response => response as JobPostings[]));
      }
      getAllEvents(): Observable<Events[]>{
        const getAllUrl = `http://localhost:8080/alumni/getEventsEnrollmentForAUser/${this.userId}`;
        return this.http.get(getAllUrl,this.options).pipe(map(response => response as Events[]));
      }
      postParticipant(eventId:Number): Observable<void>{
        return this.http.post<any>(`http://localhost:8080/alumni/createEventEnrollmentForAUser`, {eventId:eventId, userId:this.userId}, this.options).pipe(map((response: Response) => {
      }));
      }
      postFollow(followingId:Number): Observable<void>{
        return this.http.post<any>(`http://localhost:8080/alumni/createFollowerForAUser`, {followerId:this.userId, followingId:followingId}, this.options).pipe(map((response: Response) => {
      }));
      }
}