<<<<<<< HEAD
# PreCondition:
# Input: Pair= Hashset-> T (Rooted Triplet) toString({1,2},3)=1 2 3
# Input is a hashset of 3 numbers.
# Input also contains a leaf set two variables x,y
# Output:
#if statement modified to so that it gets added in both ways
function computeSN(T,L,x,y)
    X= [x]
    Z= [y]
	computed= []
	L1= []
	L1= copy(L) # Creating a copy to be used again
    while(!isempty(Z)) # Run until Z becomes empty
		z=Z[1]
        for a in X
			L= copy(L1)
			# Filter starts L- (X U Z)
			for p in X
				filter!(x -> x!=p,L) #removing all the elements of X in L
			end
			for p in Z
				filter!(x -> x!=p,L) #removing all the elements of Z in L
			end
			# Filter ends  L- (X U Z)
            for c in L
            	temp = [a,c,z]
            	temp2 = [z,c,a]
            	if(temp in T && !(temp in computed)) #pseudo code
            		#Z=Z U {c}
					append!(Z,c)
					Z = unique(Z) # Making Z unique to avoid redundancy
					append!(computed, temp)
            	end
            	if(temp2 in T && !(temp2 in computed))
            		append!(Z,c)
					Z = unique(Z)
					append!(computed, temp2)
            	end
            	#or contains!(T,temp2))

            end
        end
        h =Z[1]
        append!(X,h)
        splice!(Z,1)
    end
    return unique(X)
end

T= [[1,2,3], [1,2,4], [1,2,5], [2,3,4], [3,4,2], [2,3,5], [3,4,5], [1,3,4],
[3,4,1], [1,3,5], [1,4,5], [2,4,5]]

L= [1,2,3,4,5]

N=computeSN(T, L,1,3)
print(N)
=======
# PreCondition:
# Input: Pair= Hashset-> T (Rooted Triplet) toString({1,2},3)=1 2 3
# Input is a hashset of 3 numbers.
# Input also contains a leaf set two variables x,y
# Output:
#if statement modified to so that it gets added in both ways
function computeSN(T,L,x,y)
    X= [x]
    Z= [y]
	computed= []
	L1= []
	L1= copy(L)
    while(!isempty(Z))
		z=Z[1]
		# println("L= ", string(L))
        for a in X
			L= copy(L1)
			for p in X
				filter!(x -> x!=p,L)
			end
			for p in Z
				filter!(x -> x!=p,L)
			end
            for c in L
            	temp=[a,c,z]
            	temp2=[z,c,a]
            	if(temp in T && !(temp in computed)) #pseudo code
            		#Z=Z U {c}
					append!(Z,c)
					Z = unique(Z)
				#	println("Z= ", string(Z))
					append!(computed, temp)
            	end
            	if(temp2 in T && !(temp2 in computed))
            		append!(Z,c)
					Z = unique(Z)
					append!(computed, temp2)
            	end
            	#or contains!(T,temp2))

            end
        end
        h =Z[1]
        append!(X,h)
        splice!(Z,1)
    end
<<<<<<< HEAD
    return X			#Returns a SubNetwork
=======
    return unique(X)
>>>>>>> 4934d4796a86acdddfcfd7c341f8d9d21c05f065
end

T= [[1,2,3], [1,2,4], [1,2,5], [2,3,4], [3,4,2], [2,3,5], [3,4,5], [1,3,4],
[3,4,1], [1,3,5], [1,4,5], [2,4,5]]

L= [1,2,3,4,5]

<<<<<<< HEAD
N=computeSN(T, L,1,3) # Storing the SubNetwork list in N
print("Resulting SubNetwork: ",string(N))
=======
N=computeSN(T, L,1,3)
print(N)
>>>>>>> ff243b4849c5f1cd44f2ae24a2317a13d5f28da7
>>>>>>> 4934d4796a86acdddfcfd7c341f8d9d21c05f065