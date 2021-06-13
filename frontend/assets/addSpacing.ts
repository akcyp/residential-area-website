export default function addSpacing(txt: string, every: number) {
  const inArr = txt.toString().split('').reverse()
  const outArr: string[] = []
  for (let i = 0; i < inArr.length; i += every) {
    outArr.push(
      inArr
        .slice(i, i + every)
        .reverse()
        .join('')
    )
  }
  return outArr.reverse().join(' ')
}
