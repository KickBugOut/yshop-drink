<template>
  <div class="divBox" v-show="isShow">
      <el-row :gutter="24" class="dashboard-console-grid">
        <el-col v-bind="grid" class="ivu-mb">
          <el-card :bordered="false">
            <router-link :to="{ path: '/mall/product/store-product' }">
               <Icon icon="ep:goods" style="color: #69c0ff" :size="35" />
              <p>商品管理</p>
            </router-link>
          </el-card>
        </el-col>
        <el-col v-bind="grid" class="ivu-mb">
          <el-card :bordered="false">
            <router-link :to="{ path: '/mall/member/user' }">
              <Icon icon="ep:user" style="color: #95de64" :size="35" />
              <p>会员管理</p>
            </router-link>
          </el-card>
        </el-col>
        <el-col v-bind="grid" class="ivu-mb">
          <el-card :bordered="false">
            <router-link :to="{ path: '/mall/order/store-order' }">
              <Icon icon="ep:list" style="color: #ff9c6e" :size="35" />
              <p>订单管理</p>
            </router-link>
          </el-card>
        </el-col>
      
        <el-col v-bind="grid" class="ivu-mb">
          <el-card :bordered="false">
            <router-link :to="{ path: '/mall/shop' }" >
               <Icon icon="ep:notebook" style="color: #5cdbd3" :size="35" />
              <p>门店管理</p>
            </router-link>
          </el-card>
        </el-col>
  
      </el-row>
    </div>
</template>
<script setup lang="ts">
import { CACHE_KEY, useCache } from '@/hooks/web/useCache'

const { wsCache } = useCache()


const grid =ref({
  xl: 6,
  lg: 12,
  md: 12,
  sm: 16,
  xs: 16,
})



const user = wsCache.get(CACHE_KEY.USER)

const isShow = ref(true)
if(user.user.shopId > 0) {
  isShow.value = false
}

</script>

<style rel="stylesheet/scss" lang="scss" scoped>
.panel-group {
  margin-top: 18px;
  .card-panel-col{
    margin-bottom: 32px;
  }
  .card-panel {
    height: 108px;
    font-size: 12px;
    position: relative;
    overflow: hidden;
    cursor: pointer;
    color: #666;
    background: #fff;
    box-shadow: 4px 4px 40px rgba(0, 0, 0, .05);
    border-color: rgba(0, 0, 0, .05);



    .icon-people {
      color: #40c9c6;
    }
    .icon-message {
      color: #36a3f7;
    }
    .icon-money {
      color: #f4516c;
    }
    .icon-shopping {
      color: #34bfa3
    }
    .card-panel-icon-wrapper {
      float: left;
      margin: 14px 0 0 14px;
      padding: 16px;
      transition: all 0.38s ease-out;
      border-radius: 6px;
    }
    .card-panel-icon {
      float: left;
      font-size: 48px;
    }
    .card-panel-description {
      float: right;
      font-weight: bold;
      margin: 26px;
      margin-left: 0px;
      .card-panel-text {
        line-height: 18px;
        color: rgba(0, 0, 0, 0.45);
        font-size: 16px;
        margin-bottom: 12px;
      }
      .card-panel-num {
        font-size: 20px;
      }
    }
  }
}


.ivu-mb {
  margin-bottom: 10px;
}
.divBox {
  // padding: 0 20px !important;
}

.dashboard-console-grid {
  text-align: center;
  .ivu-card-body {
    padding: 0;
  }
  i {
    font-size: 32px;
  }
  a {
    display: block;
    color: inherit;
  }
  p {
    margin-top: 8px;
  }
}
</style>
