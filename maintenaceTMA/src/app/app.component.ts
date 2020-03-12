import { Component } from '@angular/core';
import {SelectItem} from 'primeng/api';

interface City {
  name: string;
  code: string;
}

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'maintenaceTMA';

}
