/**
 * 
 */
$(document)
		.ready(
				function() {
					$("#query")
							.click(
									function() {
										var tblName = $("#secType").val();
										$
												.ajax({
													type : 'get',
													dataType : 'json',
													url : '/hbase/apps/scan/ajax/data?tblName='
															+ tblName,
													success : function(datas) {
														console.log(datas);
														if (datas != null) {
															var htableDataList = datas["htable"];
															$("#htable_list tr:not(:first)").empty();
															for (var i = 0; i < htableDataList.length; i++) {
																$("#htable_list").append("<tr><td>"
																						+ htableDataList[i]["rowName"]
																						+ "</td><td>"
																						+ htableDataList[i]["columnFamily"]
																						+ "</td></td><td>"
																						+ htableDataList[i]["columnFamilyName"]
																						+ "</td></td><td>"
																						+ htableDataList[i]["timestamp"]
																						+ "</td></td><td>"
																						+ htableDataList[i]["columnFamilyValue"]
																						+ "</td></tr>");
															}
														}
													}
												});
									});
				});