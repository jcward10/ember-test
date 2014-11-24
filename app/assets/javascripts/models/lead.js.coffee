App.Lead = DS.Model.extend
  firstName: DS.attr('string')
  lastName: DS.attr('string')
  email: DS.attr('string')
  phone: DS.attr('string')
  status: DS.attr('string', defaultValie: 'new')
  notes: DS.attr('string')

  fullName: ( ->
      @get('firstName') + ' ' + @get('lastName')
  ).property('firstName', 'lastName')

App.Lead.reopenClass
  valid: (fields) ->
    fields.firstName and fields.lastName
