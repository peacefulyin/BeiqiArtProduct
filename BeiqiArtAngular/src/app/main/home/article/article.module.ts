import {NgModule} from '@angular/core';
import {ArticleComponent} from "./article.component";
import {ArticleContentComponent} from "./article-content/article-content.component";
import {SafeHtmlPipe} from "../../../shared/pipe/safe-html.pipe";
import {ArticleService} from "../../../shared/api/main/article.service";
import {CommonModule} from '@angular/common';
import {RouterModule} from '@angular/router';
import {SafeStylePipe} from "../../../shared/pipe/safe-style.pipe";

@NgModule({
  imports: [
    CommonModule,
    RouterModule
  ],
  declarations: [
    ArticleComponent,
    ArticleContentComponent,
    SafeHtmlPipe,
    SafeStylePipe
  ],
  providers: [
    ArticleService
  ],
  exports: [
    ArticleComponent,
    ArticleContentComponent,
    SafeHtmlPipe,
    SafeStylePipe
  ],
})


export class ArticleModule {
}
