<template>
  <div data-course-clone>
    <form
      class="form"
      v-on:submit.prevent="$emit('clone', alias, name, startTime)"
    >
      <div class="row">
        <div class="form-group col-md-6">
          <label
            >{{ T.wordsName }}
            <input class="form-control" type="text" v-model="name"
          /></label>
        </div>
        <div class="form-group col-md-3">
          <label
            >{{ T.courseNewFormShortTitle_alias_ }}
            <font-awesome-icon
              v-bind:title="T.courseNewFormShortTitle_alias_Desc"
              icon="info-circle" />
            <input class="form-control" type="text" v-model="alias"
          /></label>
        </div>
        <div class="form-group col-md-3">
          <label
            >{{ T.courseNewFormStartDate }}
            <font-awesome-icon
              v-bind:title="T.courseNewFormStartDateDesc"
              icon="info-circle" />
            <omegaup-datepicker v-model="startTime"></omegaup-datepicker
          ></label>
        </div>
      </div>
      <div class="form-group text-right">
        <button class="btn btn-primary" type="submit">
          {{ T.wordsCloneCourse }}
        </button>
      </div>
    </form>
  </div>
</template>

<style scoped>
.form-group > label {
  width: 100%;
}
.faux-label {
  font-weight: bold;
}
</style>

<script lang="ts">
import { Vue, Component, Prop } from 'vue-property-decorator';
import T from '../../lang';
import DatePicker from '../DatePicker.vue';

import {
  FontAwesomeIcon,
  FontAwesomeLayers,
  FontAwesomeLayersText,
} from '@fortawesome/vue-fontawesome';
import { fas } from '@fortawesome/free-solid-svg-icons';
import { library } from '@fortawesome/fontawesome-svg-core';
library.add(fas);

@Component({
  components: {
    'omegaup-datepicker': DatePicker,
    'font-awesome-icon': FontAwesomeIcon,
    'font-awesome-layers': FontAwesomeLayers,
    'font-awesome-layers-text': FontAwesomeLayersText,
  },
})
export default class CourseClone extends Vue {
  @Prop() initialAlias!: string;
  @Prop() initialName!: string;

  T = T;
  alias = this.initialAlias;
  startTime = new Date();
  name = this.initialName;
}
</script>
