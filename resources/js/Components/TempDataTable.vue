<template>
  <div class="md:container md:mx-auto">
    <div class="row-auto">
      <div class="grid grid-flow-col auto-cols-max gap-4">
        <div>
          <table class="shadow-lg bg-white border-collapse">
            <tr>
              <th class="bg-blue-100 border text-left px-8 py-4">Colombo</th>
              <th class="bg-blue-100 border text-left px-8 py-4"></th>
              <th class="bg-blue-100 border text-left px-8 py-4"></th>
            </tr>
            <tr v-for="colombo_temp in colombo_temps" :key="colombo_temp.id">
              <td class="border px-8 py-4">{{ colombo_temp.created_at }}</td>
              <td class="border px-8 py-4">{{ colombo_temp.temp_c }}</td>
              <td class="border px-8 py-4">{{ colombo_temp.temp_f }}</td>
            </tr>
          </table>
        </div>
        <div>
          <table class="shadow-lg bg-white border-collapse">
            <tr>
              <th class="bg-blue-100 border text-left px-8 py-4">Melbourne</th>
              <th class="bg-blue-100 border text-left px-8 py-4"></th>
              <th class="bg-blue-100 border text-left px-8 py-4"></th>
            </tr>
            <tr v-for="melbourne_temp in melbourne_temps" :key="melbourne_temp.id">
              <td class="border px-8 py-4">{{ melbourne_temp.created_at }}</td>
              <td class="border px-8 py-4">{{ melbourne_temp.temp_c }}</td>
              <td class="border px-8 py-4">{{ melbourne_temp.temp_f }}</td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>

  <pagination :pagination="pagination" @paginate="fetchMelbourne" :offset="4" />
</template>

<script>
import Pagination from "@/Components/DataTablePagination.vue";
import axios from "axios";
// import { response } from 'express';
export default {
  data() {
    return {
      offset: 4,
      pagination: {},
      colombo_temps: [],
      melbourne_temps: [],
    };
  },
  components: {
    pagination: Pagination,
  },
  methods: {
    fetchColombo: function () {
      let current_page = this.pagination.current_page;
      let pageNum = current_page ? current_page : 1;

      axios
        .get(
          `/api/v1/city_temperatures?city_slug=colombo&sort_by=${sortBy}page=${pageNum}`
        )
        .then((result) => {
          this.pagination = result.data.pagination;
          this.colombo_temps = result.data.colombo_temps;
        })
        .catch((err) => {
          console.error();
        });
    },
    fetchColombo: function () {
      let current_page = this.pagination.current_page;
      let pageNum = current_page ? current_page : 1;

      axios
        .get(
          `/api/v1/city_temperatures?city_slug=melbourne&sort_by=${sortBy}page=${pageNum}`
        )
        .then((result) => {
          this.pagination = result.data.pagination;
          this.melbourne_temps = result.data.melbourne_temps;
        })
        .catch((err) => {
          console.error();
        });
    },
  },
};
</script>
