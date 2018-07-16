


def get_above_pixel(k):
	return k - imgHeight + (k mod imgHeight)


def get_left_pixel(k):
	return k + (k mod imgHeight) - 1


def stream_processing(current_pixel, disjoint_sets, labels):
	# get all pixel postions
	above_pixel = get_above_pixel(current_pixel)
	left_pixel = get_left_pixel(current_pixel)

	# Apply the one-pass scan algorithm
	## Case 1: Both are background pixels
	if (above_pixel == BACKGROUND) and (left_pixel == BACKGROUND):
		cur_label = labels.create_new_label()
		current_pixel.set_label(cur_label)
		disjoint_sets.create(cur_label)

	## Case 2:  One(either pixel) is labeled, the other is not or
	##			both are labeled with the same number
	else if isLabeled(above_pixel) or isLabeled(left_pixel) or
			get_label(above_pixel) == get_label(left_pixel):
		cur_label = labels.get_label(above_pixel)
		current_pixel.set_label(cur_label)

	## Case 3:  Both are labeled with different numbers
	else if get_label(above_pixel) != get_label(left_pixel):
		above_pixel_label = labels.get_label(above_pixel)
		left_pixel_label = labels.get_label(left_pixel)
		cur_label = above_pixel_label
		current_pixel.set_label(cur_label)
		disjoint_sets.join(above_pixel_label, left_pixel_label)


def calculate_centroid():
	centroidList = list()
	for each set in disjoint_sets:
		total_intensity = 0
		(x,y) = (0,0)
		for each pixel in set:
			x += pixel.x() * pixel.Intensity()
			y += pixel.y() * pixel.Intensity()
			total_intensity += pixel.Intensity()
		X = x / total_intensity
		Y = y / total_intensity
		centroidList.add(X,Y)

	return centroidList

def centroiding():
	# Initate
	disjoint_sets.Initiate()
	labels.Initiate()

	# submodule: Process stream
	while(receiving_input_pixel() and not timeout()):
		current_pixel = receiving_input_pixel()
		stream_processing(current_pixel, disjoint_sets, labels)

	# submodule: calculate centroids
	centroidList = calculate_centroid(disjoint_sets)

	return centroidList
