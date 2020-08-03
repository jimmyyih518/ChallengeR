def merge_the_tools(string, k):
    # your code goes here
    slist = list(string)
    n = len(slist)
    subs = int(n/k)
    l1 = list(range(0, subs))
    l2 = [i*k for i in l1]
    for i in l2:
        s2 = slist[i:i+k]
        s3 = []
        [s3.append(s) for s in s2 if s not in s3]
        print(''.join(s3))

