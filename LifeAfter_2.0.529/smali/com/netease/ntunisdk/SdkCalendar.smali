.class public Lcom/netease/ntunisdk/SdkCalendar;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkCalendar.java"


# static fields
.field private static final SDK_VERSION:Ljava/lang/String; = "1.0.0"

.field private static final TAG:Ljava/lang/String; = "UniSDK Calendar"


# instance fields
.field private addEventObj:Lorg/json/JSONObject;

.field private isAddEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkCalendar;->isAddEvent:Z

    const/4 p1, 0x1

    const-string v0, "INNER_MODE_NO_PAY"

    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkCalendar;->setPropInt(Ljava/lang/String;I)V

    const-string v0, "INNER_MODE_SECOND_CHANNEL"

    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/netease/ntunisdk/SdkCalendar;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method private addEvent()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 194
    iget-boolean v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->isAddEvent:Z

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "title"

    .line 197
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 198
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string v1, "startDate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 199
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string v1, "endDate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 200
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 201
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string v1, "notes"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 202
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string v1, "calendarTitle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 203
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string v1, "calendarName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 204
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string v1, "calendarAccountName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 205
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string v1, "allDay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 206
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string v1, "needAlarm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 207
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string v1, "alarmTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v9

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    .line 208
    invoke-direct/range {v0 .. v6}, Lcom/netease/ntunisdk/SdkCalendar;->checkParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 211
    :cond_1
    iget-object v8, v7, Lcom/netease/ntunisdk/SdkCalendar;->myCtx:Landroid/content/Context;

    invoke-static/range {v8 .. v19}, Lcom/netease/ntunisdk/util/CalendarReminderUtils;->addCalendarEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Z

    move-result v0

    const-string v1, "respMsg"

    const-string v2, "respCode"

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 216
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string v2, "addEvent success"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const/16 v3, 0x2710

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string v2, "addEvent failed"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    :goto_0
    iget-object v0, v7, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/netease/ntunisdk/SdkCalendar;->extendFuncCall(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private checkParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 225
    invoke-static {p1}, Lcom/netease/ntunisdk/util/CalendarReminderUtils;->checkDateFormat(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "respMsg"

    const/4 v2, 0x2

    const-string v3, "respCode"

    if-eqz p1, :cond_4

    invoke-static {p2}, Lcom/netease/ntunisdk/util/CalendarReminderUtils;->checkDateFormat(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 233
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string p2, "title is not empty"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkCalendar;->extendFuncCall(Ljava/lang/String;)V

    return v0

    .line 240
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 241
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 242
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string p2, "checkParam is false"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkCalendar;->extendFuncCall(Ljava/lang/String;)V

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    .line 226
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string p2, "checkDateFormat is false"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkCalendar;->extendFuncCall(Ljava/lang/String;)V

    return v0
.end method

.method private requestCalendarPermission()V
    .locals 4

    .line 251
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "methodId"

    const-string v2, "requestPermission"

    .line 253
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "permissionName"

    const-string v2, "android.permission.READ_CALENDAR,android.permission.WRITE_CALENDAR"

    .line 254
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "firstText"

    const-string v2, "\u4e3a\u4e86\u8fdb\u884c\u65e5\u5386\u65e5\u7a0b\u6dfb\u52a0\uff0c\u8bf7\u6388\u4e88\u65e5\u5386\u7684\u6743\u9650\u3002"

    .line 255
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "refuseTip"

    const-string v2, "\u7531\u4e8e\u7f3a\u5c11\u6743\u9650\uff0c\u529f\u80fd\u65e0\u6cd5\u6b63\u5e38\u8fd0\u884c\u3002"

    .line 256
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "positiveText"

    const-string v2, "\u786e\u8ba4"

    .line 257
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "negativeText"

    const-string v2, "\u53d6\u6d88"

    .line 258
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gotoSettingReason"

    const-string v2, "\u8bf7\u5728\u7cfb\u7edf\u8bbe\u7f6e\u4e2d\u5f00\u542f\u529f\u80fd\u9700\u8981\u7684\u6743\u9650\u3002"

    .line 259
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "showDialog"

    const/4 v2, 0x1

    .line 260
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 262
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 264
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UniSDK Calendar"

    const-string v3, "permission"

    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "requestCalendarPermission"

    const-string v3, "channel"

    const-string v4, "errorMsg"

    const-string v5, "methodId"

    const-string v6, "result"

    const-string v7, "errorCode"

    const-string v8, "respMsg"

    const-string v9, "respCode"

    const-string v10, "UniSDK Calendar"

    const-string v11, ""

    .line 107
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 109
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "extendFunc:"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 112
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkCalendar;->getChannel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 117
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkCalendar;->requestCalendarPermission()V

    goto/16 :goto_4

    :cond_1
    const-string v12, "addEvent"

    .line 118
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    .line 119
    iput-boolean v12, v1, Lcom/netease/ntunisdk/SdkCalendar;->isAddEvent:Z

    .line 120
    iput-object v13, v1, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    .line 122
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkCalendar;->requestCalendarPermission()V

    goto/16 :goto_4

    :cond_2
    const-string v12, "requestPermission"

    .line 123
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 125
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 126
    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 127
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "respCode: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "respMsg: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "result: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-boolean v13, v1, Lcom/netease/ntunisdk/SdkCalendar;->isAddEvent:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v15, "0,0"

    if-eqz v13, :cond_7

    :try_start_1
    iget-object v13, v1, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    if-eqz v13, :cond_7

    if-nez v12, :cond_3

    .line 133
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkCalendar;->addEvent()V

    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 136
    :cond_3
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    invoke-virtual {v0, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    invoke-virtual {v0, v8, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_6

    const-string v0, "-1"

    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const/4 v2, -0x1

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    const-string v0, "-2"

    .line 141
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const/4 v2, -0x2

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    :cond_5
    :goto_1
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    const-string v2, "requestPermission denial"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    :cond_6
    iget-object v0, v1, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/SdkCalendar;->extendFuncCall(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :goto_2
    iput-boolean v0, v1, Lcom/netease/ntunisdk/SdkCalendar;->isAddEvent:Z

    const/4 v0, 0x0

    .line 149
    iput-object v0, v1, Lcom/netease/ntunisdk/SdkCalendar;->addEventObj:Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 151
    :cond_7
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :try_start_2
    invoke-virtual {v13, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "calendar"

    .line 154
    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v13, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    invoke-virtual {v13, v8, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v12, :cond_8

    .line 157
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    .line 158
    invoke-virtual {v13, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    .line 160
    invoke-virtual {v13, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 162
    :goto_3
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/SdkCalendar;->extendFuncCall(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 164
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 168
    :cond_9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v2, 0x1

    .line 169
    invoke-virtual {v13, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "methodId not exist"

    .line 170
    invoke-virtual {v13, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/SdkCalendar;->extendFuncCall(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 175
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendFunc json parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 179
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 180
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0x2710

    .line 182
    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    .line 183
    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/SdkCalendar;->extendFuncCall(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 186
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a
    :goto_4
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "calendar"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkCalendar;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SESSION"

    .line 56
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkCalendar;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not_login"

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkCalendar;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UIN"

    .line 64
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkCalendar;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.0"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 3

    const-string v0, "UniSDK Calendar"

    const-string v1, "init..."

    .line 71
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 72
    invoke-interface {p1, v1}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    .line 73
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object p1

    new-instance v1, Lcom/netease/ntunisdk/SdkCalendar$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/SdkCalendar$1;-><init>(Lcom/netease/ntunisdk/SdkCalendar;)V

    const-string v2, "permission"

    invoke-virtual {p1, v0, v2, v1}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->addModuleCallback(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/modules/api/ModulesCallback;)I

    return-void
.end method

.method public login()V
    .locals 0

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method
