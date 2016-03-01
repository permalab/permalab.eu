createSquareDefault = (fileObj, readStream, writeStream) ->
  size = '400'
  gm(readStream).autoOrient().resize(size, size + '^').gravity('Center').extent(size, size).stream('PNG').pipe(writeStream)

createSquareLarge = (fileObj, readStream, writeStream) ->
  size = '800'
  gm(readStream).autoOrient().resize(size, size + '^').gravity('Center').extent(size, size).stream('PNG').pipe(writeStream)

defaultStore = new FS.Store.GridFS "default", { transformWrite: createSquareDefault }
largeStore = new FS.Store.GridFS 'large', { transformWrite: createSquareLarge }

@Images = new FS.Collection 'images',
 stores: [defaultStore, largeStore]