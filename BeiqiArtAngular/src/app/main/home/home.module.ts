import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';
import {HttpClientModule} from '@angular/common/http';
import {RouterModule} from '@angular/router';

import {ComponentsModule} from "../../shared/components.module";
import {HeaderModule} from "../../components/header/header.module";
import {HomeComponent} from "./home.component";
import {HomeRoutingModule} from "./home.routing.module";
import {BannerComponent} from "../../components/banner/banner.component";
import {CarouselComponent} from "../../components/carousel/carousel.component";
import {CarouselModule} from 'ngx-bootstrap';
import {ArticleModule} from "./article/article.module";
import {CourseModule} from "./course/course.module";

import {VideosMasterComponent} from "./videos-master/videos-master.component";
import {CommonCardComponent} from "../../components/common-card/common-card.component";
import {FooterComponent} from "../../components/footer/footer.component";
import {IndexComponent} from "./index/index.component";
import {TeacherListComponent} from "./teacher-list/teacher-list.component";
import {VideoListModule} from "./video-list/video-list.module";
import {EncrollComponent} from "./encroll/encroll.component";
import {CoreModule} from "../../shared/core.module";
import {FormsModule} from '@angular/forms';
import {DialogComponent} from "../../components/dialog/dialog.component";
import {GenneralComponent} from "../../components/genneral/genneral.component";
import {LoadingComponent} from "../../components/loading/loading.component";

import {GenneralService} from "../../shared/api/main/genneral.service";
import {PersonService} from "../../shared/api/main/person.service";

@NgModule({
  imports: [
    CommonModule,
    HomeRoutingModule,
    CarouselModule,
    HeaderModule,
    VideoListModule,
    CoreModule,
    FormsModule,
    HttpClientModule,
    ArticleModule,
    RouterModule,
    CourseModule,
    ComponentsModule
  ],
  providers:[
    GenneralService,
    PersonService
  ],
  entryComponents: [DialogComponent, LoadingComponent],
  declarations: [
    HomeComponent,
    CarouselComponent,
    VideosMasterComponent,
    BannerComponent,
    FooterComponent,
    IndexComponent,
    TeacherListComponent,
    EncrollComponent,
    DialogComponent,
    LoadingComponent,
    GenneralComponent,
  ],

})
export class HomeModule {
}
