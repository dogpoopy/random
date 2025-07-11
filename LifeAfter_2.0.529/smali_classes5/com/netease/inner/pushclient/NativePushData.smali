.class public Lcom/netease/inner/pushclient/NativePushData;
.super Ljava/lang/Object;
.source "NativePushData.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ONCE:I = 0x0

.field public static final REPEAT_MONTH:I = 0x2

.field public static final REPEAT_MONTH_BACKWARDS:I = 0x3

.field public static final REPEAT_WEEK:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private delayTriggerSec:I

.field private mDay:I

.field private mHour:I

.field private mMinute:I

.field private mMode:I

.field private mMonth:I

.field private mNotifyMessage:Lcom/netease/push/utils/NotifyMessageImpl;

.field private mPushID:I

.field private mPushName:Ljava/lang/String;

.field private mRepeatMode:I

.field private mSecond:I

.field private mTimeZone:Ljava/lang/String;

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/netease/push/utils/NotifyMessageImpl;

    invoke-direct {v0}, Lcom/netease/push/utils/NotifyMessageImpl;-><init>()V

    iput-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessageImpl;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 64
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    .line 65
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    const-string v1, ""

    .line 66
    iput-object v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    .line 78
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->delayTriggerSec:I

    .line 90
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    .line 97
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    .line 100
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    .line 101
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    .line 102
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    const-string v1, "default"

    .line 104
    iput-object v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    .line 110
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    .line 113
    invoke-virtual {p0}, Lcom/netease/inner/pushclient/NativePushData;->clear()V

    .line 114
    iput-object p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    .line 115
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessageImpl;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/netease/push/utils/NotifyMessageImpl;->mNative:Z

    return-void
.end method

.method private getRepeatNextTime(Ljava/util/Calendar;II)J
    .locals 10

    .line 290
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/netease/inner/pushclient/NativePushData;->delayTriggerSec:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 292
    iget v4, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    .line 293
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    .line 294
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-direct {v4, v7, v8, v9}, Ljava/util/GregorianCalendar;-><init>(III)V

    :goto_0
    cmp-long v7, v0, v2

    if-ltz v7, :cond_0

    .line 298
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v7, v8

    shl-int v7, v6, v7

    and-int/2addr v7, p3

    if-nez v7, :cond_2

    .line 299
    :cond_0
    invoke-virtual {p1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 300
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 301
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    .line 305
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v6

    shl-int v4, v6, v4

    and-int/2addr v4, p3

    if-nez v4, :cond_2

    goto :goto_2

    .line 312
    :cond_2
    sget-object p1, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getRepeatNextTime select:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " dalayTriggerSec:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/netease/inner/pushclient/NativePushData;->delayTriggerSec:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " current:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    .line 306
    :cond_3
    :goto_2
    invoke-virtual {p1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 308
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_1
.end method

.method private getTriggerAtMillis()J
    .locals 17

    move-object/from16 v0, p0

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 246
    sget-object v4, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this.mTimeZone:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v4, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHour:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v4, v0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 249
    iget-object v4, v0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_0
    const/16 v4, 0xb

    .line 253
    iget v5, v0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 254
    iget v5, v0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 255
    iget v5, v0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    const/4 v5, 0x0

    .line 256
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 259
    iget v4, v0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    if-nez v4, :cond_1

    .line 260
    iget v4, v0, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    iget v11, v0, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    iget v12, v0, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    invoke-virtual {v3, v4, v11, v12}, Ljava/util/Calendar;->set(III)V

    .line 261
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    goto :goto_3

    :cond_1
    if-ne v4, v8, :cond_4

    .line 263
    iget v4, v0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    if-nez v4, :cond_2

    return-wide v9

    :cond_2
    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 272
    :goto_1
    iget v11, v0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    shl-int/2addr v11, v8

    or-int/2addr v4, v11

    and-int/lit8 v4, v4, 0x7f

    const/4 v11, 0x7

    .line 274
    invoke-direct {v0, v3, v11, v4}, Lcom/netease/inner/pushclient/NativePushData;->getRepeatNextTime(Ljava/util/Calendar;II)J

    move-result-wide v11

    goto :goto_3

    :cond_4
    if-eq v4, v7, :cond_6

    if-ne v4, v6, :cond_5

    goto :goto_2

    :cond_5
    move-wide v11, v9

    goto :goto_3

    .line 276
    :cond_6
    :goto_2
    iget v4, v0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    if-nez v4, :cond_7

    return-wide v9

    :cond_7
    const/4 v11, 0x5

    .line 279
    invoke-direct {v0, v3, v11, v4}, Lcom/netease/inner/pushclient/NativePushData;->getRepeatNextTime(Ljava/util/Calendar;II)J

    move-result-wide v11

    .line 281
    :goto_3
    sget-object v4, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v13, v0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    aput-object v13, v6, v5

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    sub-long v13, v11, v1

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v7

    const-string v3, "%s next trigger time:%s, after %d sec"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v3, v11, v1

    if-gez v3, :cond_8

    return-wide v9

    :cond_8
    add-long/2addr v9, v11

    sub-long/2addr v9, v1

    return-wide v9
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 55
    sget-object v0, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static readFromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/inner/pushclient/NativePushData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 383
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 384
    new-instance p1, Lcom/netease/inner/pushclient/NativePushData;

    invoke-direct {p1, p0}, Lcom/netease/inner/pushclient/NativePushData;-><init>(Ljava/lang/String;)V

    const-string p0, "notify"

    .line 385
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 386
    invoke-static {p0}, Lcom/netease/push/utils/NotifyMessageImpl;->readFromJsonString(Ljava/lang/String;)Lcom/netease/push/utils/NotifyMessageImpl;

    move-result-object p0

    iput-object p0, p1, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessageImpl;

    .line 387
    iget-object p0, p1, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessageImpl;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/push/utils/NotifyMessageImpl;->mNative:Z

    const-string p0, "repeat"

    .line 388
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    const-string p0, "mode"

    .line 389
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    const-string p0, "hour"

    .line 390
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    const-string p0, "min"

    .line 391
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    const-string p0, "sec"

    const/4 v1, 0x0

    .line 392
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, p1, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    const-string p0, "pushid"

    .line 393
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    const-string p0, "year"

    .line 394
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    const-string p0, "month"

    .line 395
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    const-string p0, "day"

    .line 396
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    const-string p0, "timeZone"

    .line 397
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessageImpl;

    invoke-virtual {v0}, Lcom/netease/push/utils/NotifyMessageImpl;->clear()V

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 121
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    .line 122
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    .line 123
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    .line 124
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    .line 125
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    .line 126
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    .line 127
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    const-string v1, "default"

    .line 128
    iput-object v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    .line 129
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    return-void
.end method

.method public createPushID(Landroid/content/Context;)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    .line 225
    sget-object p1, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPushID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getNativeNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 230
    invoke-static {}, Lcom/netease/inner/pushclient/PushClientReceiver;->createMethodIntent()Landroid/content/Intent;

    move-result-object v0

    .line 231
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    .line 232
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    const-string v1, "pushname"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "method"

    const-string v1, "nativenotify"

    .line 234
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getNotifyMessage()Lcom/netease/push/utils/NotifyMessageImpl;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessageImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mNative:Z

    return-object v0
.end method

.method public getPushName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    return v0
.end method

.method public setDelayTriggerSec(I)V
    .locals 3

    .line 80
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->delayTriggerSec:I

    .line 81
    sget-object v0, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay trigger second:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessageImpl;

    iput-object p1, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 134
    iput-object p2, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 135
    iput-object p3, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessageImpl;

    iput-object p1, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 140
    iput-object p2, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 141
    iput-object p3, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    .line 142
    iput-object p4, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessageImpl;

    iput-object p1, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mTitle:Ljava/lang/String;

    .line 147
    iput-object p2, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mMsg:Ljava/lang/String;

    .line 148
    iput-object p3, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mExt:Ljava/lang/String;

    .line 149
    iput-object p4, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mSound:Ljava/lang/String;

    .line 150
    iput-object p5, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupId:Ljava/lang/String;

    .line 151
    iput-object p6, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mGroupName:Ljava/lang/String;

    .line 152
    iput-object p7, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelId:Ljava/lang/String;

    .line 153
    iput-object p8, v0, Lcom/netease/push/utils/NotifyMessageImpl;->mChannelName:Ljava/lang/String;

    return-void
.end method

.method public setMonthRepeat(I)V
    .locals 1

    const/4 v0, 0x2

    .line 189
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    .line 190
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    return-void
.end method

.method public setMonthRepeatBackwards(I)V
    .locals 1

    const/4 v0, 0x3

    .line 194
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    .line 195
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    return-void
.end method

.method public setOnce(III)V
    .locals 1

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    .line 200
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    .line 201
    iput p2, p0, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    .line 202
    iput p3, p0, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    return-void
.end method

.method public setOnceUnixtime(J)V
    .locals 4

    .line 206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 208
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_0
    const/4 p1, 0x1

    .line 213
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    const/4 p1, 0x2

    .line 214
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    const/4 p1, 0x5

    .line 215
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    const/16 p1, 0xb

    .line 216
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    const/16 p1, 0xc

    .line 217
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    const/16 p1, 0xd

    .line 218
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    const/4 p1, 0x0

    .line 219
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    return-void
.end method

.method public setTime(II)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 158
    iput p2, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    const/4 p1, 0x0

    .line 159
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    return-void
.end method

.method public setTime(III)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 164
    iput p2, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    .line 165
    iput p3, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    return-void
.end method

.method public setTime(IIILjava/lang/String;)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 177
    iput p2, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    .line 178
    iput p3, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    .line 179
    iput-object p4, p0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    return-void
.end method

.method public setTime(IILjava/lang/String;)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    .line 170
    iput p2, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    const/4 p1, 0x0

    .line 171
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    .line 172
    iput-object p3, p0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    return-void
.end method

.method public setWeekRepeat(I)V
    .locals 1

    const/4 v0, 0x1

    .line 184
    iput v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    .line 185
    iput p1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    return-void
.end method

.method public startAlarm(Landroid/content/Context;)V
    .locals 1

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/inner/pushclient/NativePushData;->getNativeNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/netease/inner/pushclient/NativePushData;->startAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public startAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 328
    sget-object v0, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAlarm mPushName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget v0, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    const/high16 v1, 0x4000000

    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const-string v0, "alarm"

    .line 332
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 333
    invoke-direct {p0}, Lcom/netease/inner/pushclient/NativePushData;->getTriggerAtMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 336
    sget-object p1, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " triggerAtmillis:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/4 v4, 0x0

    if-lt p1, v3, :cond_0

    .line 340
    :try_start_0
    invoke-virtual {v0, v4, v1, v2, p2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 342
    sget-object v3, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setExact Exception use alarmManager.set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, v4, v1, v2, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {v0, v4, v1, v2, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 349
    :cond_1
    sget-object p2, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    const-string v0, "triggerAtmillis timeout"

    invoke-static {p2, v0}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object p2, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/push/utils/PushSetting;->rmNativePushName(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 322
    invoke-virtual {p0, p2}, Lcom/netease/inner/pushclient/NativePushData;->getNativeNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/netease/inner/pushclient/NativePushData;->startAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public stopAlarm(Landroid/content/Context;)V
    .locals 3

    .line 355
    sget-object v0, Lcom/netease/inner/pushclient/NativePushData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAlarm mPushName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/inner/pushclient/NativePushData;->getNativeNotifyIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 357
    iget v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    const/high16 v2, 0x4000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 358
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 359
    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 360
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    return-void
.end method

.method public writeToJsonString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 365
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 366
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mNotifyMessage:Lcom/netease/push/utils/NotifyMessageImpl;

    invoke-virtual {v1}, Lcom/netease/push/utils/NotifyMessageImpl;->writeToJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notify"

    .line 367
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    iget v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mRepeatMode:I

    const-string v2, "repeat"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 369
    iget v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMode:I

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 370
    iget v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mYear:I

    const-string v2, "year"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 371
    iget v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMonth:I

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 372
    iget v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mDay:I

    const-string v2, "day"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 373
    iget v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mHour:I

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 374
    iget v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mMinute:I

    const-string v2, "min"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 375
    iget v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mSecond:I

    const-string v2, "sec"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 376
    iget v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mPushID:I

    const-string v2, "pushid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    iget-object v1, p0, Lcom/netease/inner/pushclient/NativePushData;->mTimeZone:Ljava/lang/String;

    const-string v2, "timeZone"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
