include { fromSamplesheet } from 'plugin/nf-validation'

workflow {
    ch_input = Channel.fromSamplesheet("input", schema:"schema.json")

    PLUS(ch_input)

}

process PLUS {
    input:
    tuple val(meta), val(number)

    output:
    tuple val(meta), val(added_number)

    exec: added_number = number + 1
}