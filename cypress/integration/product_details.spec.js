describe('example to-do app', () => {

  it("should visit the home page", () => {
    cy.visit('http://0.0.0.0:3000')
  })

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("Should find product Cliff", () => {
    cy.get(".products article")
      .first()
      .click()
  });
})
