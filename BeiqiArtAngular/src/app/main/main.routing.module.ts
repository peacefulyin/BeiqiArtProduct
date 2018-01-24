import {NgModule} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {SlideRiverComponent} from "../components/slide-river/slide-river.component";
import {MainComponent} from "./main.component";

const routes: Routes = [
  {path: '', component:MainComponent,loadChildren: 'app/main/home/home.module#HomeModule'},
  // {path: 'course', component:MainComponent,loadChildren: 'app/main/course/course.module#CourseModule'},
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})

export class MainRoutingModule {
}
