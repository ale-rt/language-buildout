describe 'Buildout grammar', ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('language-buildout')

    runs ->
      grammar = atom.grammars.grammarForScopeName('source.buildout')

  it 'parses the grammar', ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe 'source.buildout'
