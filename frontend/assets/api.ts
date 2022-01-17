/* eslint-disable camelcase */

export interface APIResponse<T> {
  data: {
    id: number
    attributes: T
  }
  meta: {}
}

export interface APIBulkResponse<T> {
  data: {
    id: number,
    attributes: T
  }[]
  meta: {}
}

export interface APIImageFormatData {
  ext: string
  hash: string
  mime: string
  name: string
  url: string
  width: number
  height: number
  size: number
}

export type APIImageData = APIImageFormatData & {
  alternativeText: string
  caption: string
  formats: {
    small?: APIImageFormatData
    thumbnail?: APIImageFormatData
  }
}

export type APIHomepageData = APIResponse<{
  heading: string
  subHeading: string
  contentTitle: string
  content: string
  createdAt: string
  updatedAt: string
  publishedAt: string
  parallax: APIResponse<APIImageData>
  Cards: {
    id: number
    heading: string
    content: string
    icon: string | null
  }[]
}>

export type InvestmentsData = {
  name: string
  shortDescription: string
  fullDescription: string
  thumbnail: APIResponse<APIImageData>
  images: APIBulkResponse<APIImageData>
  storeys: APIBulkResponse<{
    tier: number
    plan: APIResponse<APIImageData>
  }>
  apartaments: APIBulkResponse<{
    name: string
    area: number
    pricePerSquareMeter: number
    type: 'primary' | 'secondary'
    tier: number
    status: 'available' | 'reservation' | 'sold'
    polygonMask: string
  }>
}

export type APIStoreyData = APIResponse<{
  tier: number
  plan: APIResponse<APIImageData>
}>

export type APIInvestmentData = APIResponse<InvestmentsData>
export type APIInvestmentsData = APIBulkResponse<InvestmentsData>
