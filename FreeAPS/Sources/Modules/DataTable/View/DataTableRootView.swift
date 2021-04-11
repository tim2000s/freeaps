import SwiftUI

extension DataTable {
    struct RootView: BaseView {
        @EnvironmentObject var viewModel: ViewModel<Provider>
        @State private var isRemoveCarbsAlertPresented = false
        @State private var removeCarbsAlert: Alert?

        private var dateFormatter: DateFormatter {
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            return formatter
        }

        var body: some View {
            Form {
                list
            }
            .navigationTitle("History")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading: Button("Close", action: viewModel.hideModal)
            )
        }

        private var list: some View {
            List {
                ForEach(viewModel.items.indexed(), id: \.1.id) { _, item in
                    HStack {
                        Image(systemName: "circle.fill").foregroundColor(item.color)
                        Text(dateFormatter.string(from: item.date))
                            .moveDisabled(true)
                        Text(item.type.name)
                        Text(item.amountText).foregroundColor(.secondary)
                        if let duration = item.durationText {
                            Text(duration).foregroundColor(.secondary)
                        }

                        if item.type == .carbs {
                            Spacer()
                            Image(systemName: "xmark.circle").foregroundColor(.secondary)
                                .contentShape(Rectangle())
                                .padding(.vertical)
                                .onTapGesture {
                                    removeCarbsAlert = Alert(
                                        title: Text("Delete carbs?"),
                                        message: Text(item.amountText),
                                        primaryButton: .destructive(
                                            Text("Delete"),
                                            action: { viewModel.deleteCarbs(at: item.date) }
                                        ),
                                        secondaryButton: .cancel()
                                    )
                                    isRemoveCarbsAlertPresented = true
                                }
                                .alert(isPresented: $isRemoveCarbsAlertPresented) {
                                    removeCarbsAlert!
                                }
                        }
                    }
                }
            }
        }
    }
}
