module FormHelper
  def form_label_class
    'block mb-2 text-sm font-medium text-gray-900 dark:text-gray-400'
  end

  def form_select_class
    'bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-green-500
    focus:border-green-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600
    dark:placeholder-gray-400 dark:text-white dark:focus:ring-green-500 dark:focus:border-green-500'
  end

  def form_text_area_class
    'bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-green-500
    focus:border-green-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600
    dark:placeholder-gray-400 dark:text-white dark:focus:ring-green-500 dark:focus:border-green-500'
  end

  def form_submit_class
    'inline-flex justify-center items-center px-5 py-2.5 text-sm font-medium text-center text-white bg-green-600
     rounded-lg focus:ring-4 focus:ring-green-200 dark:focus:ring-green-900 hover:bg-green-800 mt-5'
  end

  def form_back_button_class
    'bg-gray-150 inline-flex justify-center items-center ml-2 mr-2 px-5 py-2.5 text-sm font-medium
    text-center text-black bg-white rounded-lg focus:ring-4 focus:ring-green-200
    dark:focus:ring-green-900 hover:bg-gray-200'
  end

  def form_checkbox_class
    'w-4 h-4 text-green-600 bg-gray-100 rounded border-gray-300 focus:ring-green-500
    dark:focus:ring-green-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700
    dark:border-gray-600'
  end

  def form_file_class
    'block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer
    bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600
    dark:placeholder-gray-400'
  end
end
