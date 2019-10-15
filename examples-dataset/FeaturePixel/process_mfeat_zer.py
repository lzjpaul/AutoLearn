# adding label to the last column

import numpy as np

m_feat_zer_origin = np.genfromtxt('mfeat/mfeat-zer') # no delimiter
print ('m_feat_zer_origin shape: ', m_feat_zer_origin.shape)
m_feat_zer_label = np.zeros((m_feat_zer_origin.shape[0],1))
print ('m_feat_zer_label.shape: ', m_feat_zer_label.shape)

m_feat_zer_label[0:200]=0
m_feat_zer_label[200:400]=1
m_feat_zer_label[400:600]=2
m_feat_zer_label[600:800]=3
m_feat_zer_label[800:1000]=4
m_feat_zer_label[1000:1200]=5
m_feat_zer_label[1200:1400]=6
m_feat_zer_label[1400:1600]=7
m_feat_zer_label[1600:1800]=8
m_feat_zer_label[1800:2000]=9

print ('m_feat_zer_label: ', m_feat_zer_label)

m_feat_zer_final=np.concatenate((m_feat_zer_origin, m_feat_zer_label), axis=1)
print ('m_feat_zer_final.shape: ', m_feat_zer_final.shape)
print ('m_feat_zer_final: ', m_feat_zer_final)
np.savetxt('m_feat_zer.csv', m_feat_zer_final, delimiter=',')
