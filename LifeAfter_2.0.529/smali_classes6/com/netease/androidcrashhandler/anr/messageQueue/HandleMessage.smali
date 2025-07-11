.class public Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;
.super Ljava/lang/Object;
.source "HandleMessage.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mActionTime:J

.field private mCpuDuration:J

.field private mDuration:D

.field private mEndCpuTime:J

.field private mEndInfo:Ljava/lang/String;

.field private mEndTime:J

.field private mMessageCount:J

.field private mNativeStaicTrace:Ljava/lang/String;

.field private mStackTrace:Ljava/lang/String;

.field private mStartCpuTime:J

.field private mStartInfo:Ljava/lang/String;

.field private mStartTime:J

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartTime:J

    .line 11
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndTime:J

    .line 12
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartCpuTime:J

    .line 13
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndCpuTime:J

    const-wide/16 v2, 0x0

    .line 14
    iput-wide v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mDuration:D

    .line 15
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mCpuDuration:J

    .line 16
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mMessageCount:J

    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartInfo:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndInfo:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStackTrace:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mNativeStaicTrace:Ljava/lang/String;

    .line 21
    iput-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mType:Ljava/lang/String;

    .line 22
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mActionTime:J

    return-void
.end method


# virtual methods
.method public addMessageCount()V
    .locals 4

    .line 62
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mMessageCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mMessageCount:J

    return-void
.end method

.method public calculateDuration()V
    .locals 6

    .line 45
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 46
    iget-wide v4, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartTime:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mDuration:D

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mDuration:D

    .line 50
    :goto_0
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndCpuTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 51
    iget-wide v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartCpuTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mCpuDuration:J

    goto :goto_1

    .line 53
    :cond_1
    iput-wide v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mCpuDuration:J

    :goto_1
    return-void
.end method

.method public clean()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 205
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartTime:J

    .line 206
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndTime:J

    .line 207
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartCpuTime:J

    .line 208
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndCpuTime:J

    const-wide/16 v2, 0x0

    .line 209
    iput-wide v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mDuration:D

    .line 210
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mCpuDuration:J

    .line 211
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mMessageCount:J

    const-string v2, ""

    .line 212
    iput-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartInfo:Ljava/lang/String;

    .line 213
    iput-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndInfo:Ljava/lang/String;

    .line 214
    iput-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mType:Ljava/lang/String;

    .line 215
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mActionTime:J

    return-void
.end method

.method protected clone()Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 220
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->clone()Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;

    move-result-object v0

    return-object v0
.end method

.method public getActionTime()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mActionTime:J

    return-wide v0
.end method

.method public getCpuDuration()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mCpuDuration:J

    return-wide v0
.end method

.method public getDuration()D
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mDuration:D

    return-wide v0
.end method

.method public getEndCpuTime()J
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndCpuTime:J

    return-wide v0
.end method

.method public getEndInfo()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndTime:J

    return-wide v0
.end method

.method public getMessageCount()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mMessageCount:J

    return-wide v0
.end method

.method public getNativeStaicTrace()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mNativeStaicTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getRealTime()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mActionTime:J

    return-wide v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getStartCpuTime()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartCpuTime:J

    return-wide v0
.end method

.method public getStartInfo()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartTime:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hasStartTime()Z
    .locals 5

    .line 94
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse2Json()Lorg/json/JSONObject;
    .locals 7

    .line 157
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "start_time"

    .line 160
    iget-wide v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "end_time"

    .line 161
    iget-wide v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "start_cpu_time"

    .line 162
    iget-wide v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartCpuTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "end_cpu_time"

    .line 163
    iget-wide v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndCpuTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "action_time"

    .line 164
    iget-wide v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mActionTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 165
    iget-wide v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mDuration:D

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "cpu_duration"

    .line 166
    iget-wide v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mCpuDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "message_count"

    .line 167
    iget-wide v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mMessageCount:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "start_info"

    .line 168
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "end_info"

    .line 169
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 172
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStackTrace:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "#"

    if-nez v2, :cond_1

    .line 173
    :try_start_1
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStackTrace:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 174
    array-length v5, v2

    if-lez v5, :cond_1

    const/4 v5, 0x0

    .line 175
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 176
    aget-object v6, v2, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 177
    aget-object v6, v2, v5

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "stack_info"

    .line 182
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 184
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mNativeStaicTrace:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 185
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mNativeStaicTrace:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 186
    array-length v4, v2

    if-lez v4, :cond_3

    .line 187
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 188
    aget-object v4, v2, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 189
    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "native_stack_info"

    .line 194
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 195
    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public setActionTime(J)V
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mActionTime:J

    return-void
.end method

.method public setCpuDuration(J)V
    .locals 0

    .line 141
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mCpuDuration:J

    return-void
.end method

.method public setDuration(D)V
    .locals 0

    .line 145
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mDuration:D

    return-void
.end method

.method public setEndCpuTime(J)V
    .locals 3

    .line 130
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartCpuTime:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p1, -0x1

    .line 133
    :cond_0
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndCpuTime:J

    return-void
.end method

.method public setEndInfo(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndInfo:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndTime:J

    return-void
.end method

.method public setMessageCount(J)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mMessageCount:J

    return-void
.end method

.method public setNativeStaicTrace(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mNativeStaicTrace:Ljava/lang/String;

    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStackTrace:Ljava/lang/String;

    return-void
.end method

.method public setStartCpuTime(J)V
    .locals 0

    .line 118
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartCpuTime:J

    return-void
.end method

.method public setStartInfo(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartInfo:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartTime:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandleMessage{mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mStartCpuTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartCpuTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEndCpuTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndCpuTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mDuration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mCpuDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mCpuDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMessageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mMessageCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mStartInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mStartInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mEndInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mEndInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mActionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HandleMessage;->mActionTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
