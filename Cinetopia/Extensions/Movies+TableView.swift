//
//  Movies+TableView.swift
//  Cinetopia
//
//  Created by Victor Luiz on 05/01/24.
//

import UIKit

extension MoviesViewController: UITableViewDataSource, UITableViewDelegate {
    
    // Como criar TableView -> Primeiro assina o protocolo DataSource (o Delegate é a ação sobre a célula: clicar, etc.)
    
        // Coloca no numRows numero de linha conforme array.count
        // Criar o componente tableView no viewcode, registrando ela:
            // tableView.register(TableViewCell.self --> para saber o tipo de celula da tabela)
            // junto com o nome da celula "xxxCell"
        // Coloca no cellForRowAt a celula e de qual tableView ela vai vir:
            // let cell = tableView.dequeue "xxxCell" e ajusta o texto e cor
    
    // MARK: - TableView Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell {
            cell.cellConfiguration(movie: movies[indexPath.row])
            cell.backgroundColor = .clear
            return cell
        }
        else {
            print("Error customizating table view cell")
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) // AQUI JÁ É O PROTOCOLO UITABLEVIEW DELEGATE
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}
