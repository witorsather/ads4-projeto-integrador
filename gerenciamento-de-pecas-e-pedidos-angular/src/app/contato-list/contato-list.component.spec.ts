import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ContatoListComponent } from './contato-list.component';

describe('ContatoListComponent', () => {
  let component: ContatoListComponent;
  let fixture: ComponentFixture<ContatoListComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ContatoListComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ContatoListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
