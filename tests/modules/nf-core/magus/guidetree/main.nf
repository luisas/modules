#!/usr/bin/env nextflow

include { MAGUS_GUIDETREE } from '../../../../../modules/nf-core/magus/guidetree/main.nf'

workflow test_magus_guidetree {

    input = [
        [ id:'test' ], // meta map
        file(params.test_data['sarscov2']['genome']['informative_sites_fas'], checkIfExists: true)
    ]

    MAGUS_GUIDETREE ( input )
}
