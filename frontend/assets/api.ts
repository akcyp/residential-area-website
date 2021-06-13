/* eslint-disable camelcase */

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

export interface APIImageData extends APIImageFormatData {
  id: number
  alternativeText: string
  caption: string
  formats: {
    small?: APIImageFormatData
    thumbnail?: APIImageFormatData
  }
}

export interface APICardData {
  id: number
  Heading: string
  Content: string
  icon: string
}

export interface APIHomepageData {
  Content: string
  ContentTitle: string
  Heading: string
  Subheading: string
  parallax: APIImageData
  Cards: APICardData[]
}

export interface APIApartamentData {
  id: number
  name: string
  tier: number
  polygon_mask: string
  price_per_square_meter: number
  area: number
  status: 'available' | 'reservation' | 'sold'
  type: 'primary' | 'secondary'
}

export interface APIStoreyData {
  id: number
  tier: number
  plan: APIImageData
}

export interface APIInvestmentData {
  id: number
  name: string
  short_description: string
  full_description: string
  thumbnail: APIImageData
  images: APIImageData[]
  storeys: APIStoreyData[]
  apartaments: APIApartamentData[]
}
