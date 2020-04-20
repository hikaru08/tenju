module ApplicationHelper
  def default_meta_tags
    {
      site: '株式会社天授',
      title: '滋賀の遺品整理・生前整理なら『天授』',
      reverse: true,
      charset: 'utf-8',
      description: '住空間の整理サービスなら『天授』にお任せください。遺品整理・生前整理から不用品回収まで幅広いサービスを承っております。ただ物を整理するのが私たちの仕事ではありません。お客様の心を前向きにするお手伝いをさせていただきます。',
      keywords: '遺品整理, 滋賀 遺品整理, 彦根 遺品整理',
      canonical: 'https://tenju.net',
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('square.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
      og: {
        site_name: '株式会社天授',
        title: '滋賀の遺品整理・生前整理なら『天授』', 
        description: '住空間の整理サービスなら『天授』にお任せください。遺品整理・生前整理から不用品回収まで幅広いサービスを承っております。ただ物を整理するのが私たちの仕事ではありません。お客様の心を前向きにするお手伝いをさせていただきます。',
        type: 'website',
        url: 'https://tenju.net',
        image: image_url('square.png'),
        locale: 'ja_JP',
      }
    }
  end
end
