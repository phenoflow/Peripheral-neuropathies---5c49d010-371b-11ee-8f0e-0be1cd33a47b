cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  polyneuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: polyneuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-mumps---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-mumps---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: polyneuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  mononeuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: mononeuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-mumps---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-mellitus---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-mellitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: mononeuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-noninsulin---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-noninsulin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-mellitus---primary/output
  arthropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: arthropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-noninsulin---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-polyneuritis---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-polyneuritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: arthropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  amyloid-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: amyloid-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-polyneuritis---primary/output
  alcoholic-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: alcoholic-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: amyloid-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-multiplex---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-multiplex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: alcoholic-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-median---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-median---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-multiplex---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-compression---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-compression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-median---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-ulnar---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-ulnar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-compression---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-ulnar---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-palsy---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-palsy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-entrapment---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-entrapment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-palsy---primary/output
  radial-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: radial-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-entrapment---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-lesion---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-lesion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: radial-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-causalgia---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-causalgia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-lesion---primary/output
  upper-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: upper-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-causalgia---primary/output
  lower-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: lower-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: upper-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peroneal-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: peroneal-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: lower-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  popliteal-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: popliteal-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: peroneal-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-plantar---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-plantar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: popliteal-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-morton---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-morton---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-plantar---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-specified---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-morton---primary/output
  idiopathic-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: idiopathic-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-specified---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-neuritis---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-neuritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: idiopathic-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  hereditary-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: hereditary-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-neuritis---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-dejerinesottas---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-dejerinesottas---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: hereditary-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  muscular-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: muscular-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-dejerinesottas---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-charcotmarietooth---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-charcotmarietooth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: muscular-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-sensory---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-sensory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-charcotmarietooth---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-refsum's---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-refsum's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-sensory---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-motor---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-motor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-refsum's---primary/output
  toxic-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: toxic-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-motor---primary/output
  infective-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: infective-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: toxic-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-guillainbarre---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-guillainbarre---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: infective-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-millerfisher---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-millerfisher---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-guillainbarre---primary/output
  vascular-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: vascular-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-millerfisher---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-arthritis---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: vascular-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-diabetes---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-arthritis---primary/output
  diabetic-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: diabetic-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-diabetes---primary/output
  painful-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: painful-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: diabetic-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-system---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: painful-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-inflammatory---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-inflammatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-system---primary/output
  other-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary:
    run: other-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-inflammatory---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-ulcer---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-ulcer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: other-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---primary/output
  peripheral---primary:
    run: peripheral---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-ulcer---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-history---primary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: peripheral---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-history---primary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-lesion---secondary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-lesion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-causalgia---secondary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-causalgia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-lesion---secondary/output
  upper-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary:
    run: upper-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-causalgia---secondary/output
  mononeuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary:
    run: mononeuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: upper-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary/output
  peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-classified---secondary:
    run: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: mononeuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary/output
  polyneuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary:
    run: polyneuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes-classified---secondary/output
  other-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary:
    run: other-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: polyneuropathy-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: other-peripheral-neuropathies-excluding-cranial-nerve-and-carpal-tunnel-syndromes---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
