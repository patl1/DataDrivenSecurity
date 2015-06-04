
print("Risk Summary:")
print(summary(av$Risk))

print('')

print("Reliability Summary:")
print(summary(av$Reliability))

print('')

print("Reliability Table:")
print(table(av$Reliability))

print('')

print("Risk Table:")
print(table(av$Risk))

#more summaries

print('')

print("Type Summary:")
print(summary(av$Type, maxsum=10))

print('')

print("Country Summary:")
print(summary(av$Country, maxsum=40))