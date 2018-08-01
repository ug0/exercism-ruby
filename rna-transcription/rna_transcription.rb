class Complement
  DNA_TO_RNA = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }

  def self.of_dna(rna)
    begin
      rna.chars.map { |e| DNA_TO_RNA.fetch(e) }.join
    rescue KeyError
      ''
    end
  end
end