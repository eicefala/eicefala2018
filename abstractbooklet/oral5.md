# Oral Session 5: Speech Technology

## Phonetic Spell Checker
### Leonardo Araujo

In text editing, words that are not present in a given dictionary are considered unknown or misspelled. Those strings are flagged by a spell checker which should also provide a correction or a list of suggestions. Essentially, a string is not found in a given dictionary due to the possible factors: typing errors or spelling error, when regarding human's source of errors (what might be understood as a noisy channel); the presence of interfering noise in a communication channel, whether regarding transmission, storage, printing errors
or an automatic character recognition system, among other possible non human sources; or a given word does indeed exists but it simply is not listed on the system's dictionary. Spelling errors might be classified into whole word errors, faulty graphemes or faulty phonemes. In general, spell checkers intend to provide correction suggestions for the last two classes of errors, since both of them, in written form, might be a combination of the following grapheme edition: deletion, insertion, substitution or transposition. Automatic correction is indeed part of larger problem, concerning the recognition and matching among a universe of erroneous data.

When an erroneous word is found, spell checkers usually consider a list of word candidates that might be generated from the faulty word applying a combination of the four type of grapheme edition, as pointed before. To choose between the potential candidates, we need distance metric between two strings (the potential source string and the observed erroneous string). A non probabilistic approach is the minimum edit distance algorithm, which solves the problem by means of dynamic programming. The minimum edit distance is the minimum number of edit operations (insertion, deletion, substitution and transposition) necessary to transform one string into another. Each operation might have a different
cost. The Levenshtein distance is the simplest measure, where only three operations are allowed (insertion, deletion, substitution) and each of them has the same cost of 1. Levenshtein also proposed another metric in which substitutions are not allowed (or equivalently, they have a cost of 2, since any substitution might be represented by a deletion followed by an insertion).
The Damerau-Levenshtein distance includes the four edit operations and assign a cost of 1 to all of them (substitution will cost nothing if the characters involved are the same).

A large dictionary has proven important to avoid making rare words as errors. It is specially true when using word frequency as a factor in spelling correction, what is used in modern spell checking systems. Peter Norvig (2007) proposed a spell checker which uses the probability of the edit candidates from a erroneous string. A first improvement over his spell corrector is to consider both word probability and minimum edit distance. Faulty graphemes spelling errors are the major target of this approach. Still some spelling errors might not be efficiently corrected by this approach, such as those created by insufficient linguistic knowledge or faulty phonemes, when the misspelled word does not sound like the target word, when a phoneme is inserted, removed, substituted or transposed.

To take in account those phonological errors that lead to misspelling, it is here proposed a spell checker, based on the Norvig's approach and the minimum edit distance considering each word as a string of phonemes, rather than a string of characters. The sole use of this approach decreases the spell checker performance, but using it in conjugation with the original Norvig's spell checker proves to increase in 10% the correction performance.


## Robustness in forensic speaker comparison: The great quest
### Adelino Pinheiro Silva, Adriano Vilela Barbosa, Maurílio Nunes Vieira

the latter has more control of some variables while the former deals with recordings from different origins. In FSC, the rule is to compare a sample pattern with a crime vestige.  Also, the stakes are higher in FSC, because of the risk of wrongly convicting an innocent person or acquiting a guilty person.

Within this scenario, two dilemmas can be pointed out. The first is how to make a reliable, transparent, and reproducible speaker comparison, considering the new paradigms of forensic science and human rights. The second is how to test and evaluate existing speaker comparison techniques. In this work, we considered the effects of noise, communication channel coding, microphone type, and time lapse between the compared voices.

The hunt begins by tracing the steps of the forensic sciences and speaker comparison. It was necessary to discuss the interface of forensic science and the Brazilian legal environment, the main acoustic measurements in use in forensic speaker comparison, as well as the techniques for statistical classification.

Three approaches have been used. The first is based on the separation of the speech signal in blocks with similar signal-to-noise ratios (SNR). The second approach applies the Full Bayesian Significance Test (FBST) to find the credibility interval of forensic speaker comparison. The third approach applies the combination of different acoustic features in order to reduce equal error rate (EER). This approach comes from a baseline a study of different features used in speaker comparison in noisy conditions, such as GSM (Global System for Mobile communications) channel contamination.

The main objective of block separation  is to allow comparisons between more homogeneous data to be made. The challenge is to realize automatic segmentation and comparison. Results show that blocking by acoustic similarity improved accuracy in 5.5 %. Blocking by SNR  further decreased the EER from 2.2% to 1.7%, on average. The method can potentially improve forensic speaker comparison.

In the FBST approach, the main challenge was to apply the test to a large number of observations and to formulate an equation to solve the test faster. Comparisons with other interval inference methodologies indicated that FBST is more conservative in relation to confidence intervals. This helps to reduce the risk of wrong association of an innocent person.

The study of speaker comparison in GSM and noise conditions include different approaches to calculate the likelihood ratio and the acoustic features. So far, mel-frequency cepstrum coefficients (MFCC) and universal background model with gaussian mixture models (UBM-GMM) methodology have shown the best results.  When used to compare GSM encoded samples at an SNR of 17 dB, the MFCC produces an EER of less than 10%, on average.


## Quantifying the Multivariate Instantaneous Association between the Acoustic and Visual Domains during Speech
### Luciano Bruno Domingos Neves, Adriano Vilela Barbosa

This work presents a method for quantifying the instantaneous association between the acoustic and visual domains in audiovisual speech processing. An important limitation of previous approaches is eliminated in that the instantaneous association can now be computed between two groups of signals as opposed to just two signals.

Two measures of association are defined. The first one (v) captures the shared variance between the groups of variables by mapping the linear relationship between them. In order to establish each group’s total variance, Principal Component Analysis (PCA) and Canonical Component Analysis (CCA) are used to remove redundant information by diagonalizing the covariance matrix.

The use of CCA provides another definition of association: one that estimates the probability of the two groups being independent (h). Time-varying fluctuations are captured by using an exponential moving average filter to estimate the instantaneous covariance between variables. The method was applied to two databases collected during speech production experiments.

The first database contains measurements of vocal tract motion of two speakers collected by electromagnetic articulography (EMA) while they were interacting with each other. 

The second database contains vocal tract motion, face motion and speech acoustics collected for a single speaker during a non-spontaneous speech task. Once again, vocal tract motion was measured by electromagnetic articulography, whereas face motion was captured by optical sensors and the speech acoustics was represented by Line Spectrum Pairs (LSP).

The method was able to detect how the association between domains changes over time. For the first experiment, it was found that the association between the groups of variables is closely related to the first principal component within each group; it was also  possible to identify which variables were most descriptive of the overall association between the groups and how this behavior changed over time. In the second experiment, a strong relationship was observed between the instantaneous association and the energy of the speech acoustics, something that could potentially lead to future improvements to audiovisual coding algorithms.



