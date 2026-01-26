class Solution:
    def isValid(self, s: str) -> bool:
        open_bracket = ['(','{','[']
        closed_bracket = [')','}',']']
        d = dict(zip(closed_bracket,open_bracket))
        if (s[0] in closed_bracket or s[-1] in open_bracket):
            return False
        ind = 0
        result = []
        while(ind<len(s)):
            if(s[ind] in open_bracket):
                result.append(s[ind])
            else:
                need = d[s[ind]]
                if (len(result)>0 and result[-1]==need):
                    result.pop()
                else:
                    return False
            ind += 1
        if (len(result)==0):
            return True
        else:
            return False

        