.class public Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;
.super Ljava/lang/Object;
.source "HookMessage.java"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mNonHandleMessageArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/androidcrashhandler/anr/messageQueue/NonHandleMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static mQueue:Landroid/os/MessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->mNonHandleMessageArrayList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 49
    sput-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllMessageFromMessageQueue(Z)V
    .locals 6

    const-string v0, "trace"

    const-string v1, "HookMessage [PrintAllMessage] start"

    .line 117
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "trace"

    const-string v0, "HookMessage [PrintAllMessage] queue is null"

    .line 121
    invoke-static {p0, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "android.os.MessageQueue"

    .line 127
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mMessages"

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 129
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 130
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 133
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v1, :cond_1

    const-string v3, "trace"

    const-string v4, "HookMessage [PrintAllMessage] message is null"

    .line 137
    invoke-static {v3, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_1
    monitor-enter v0

    if-eqz p0, :cond_2

    if-eqz v1, :cond_3

    :try_start_1
    const-string p0, "trace"

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HookMessage [PrintAllMessage] Message info ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz v1, :cond_3

    add-int/2addr p0, v2

    const-string v3, "trace"

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HookMessage [PrintAllMessage] \u961f\u5217\u4e2d\u672a\u5904\u7406\u7684\u6d88\u606f "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->getNextMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    .line 153
    invoke-static {v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->parseNonHandleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 156
    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static getMessageQueue()Landroid/os/MessageQueue;
    .locals 3

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 78
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->hookActivityThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->hookMainMessageQueue(Landroid/os/Handler;)Landroid/os/MessageQueue;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "trace"

    const-string v2, "HookMessage [PrintAllMessage] queue is null"

    .line 83
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private static getNextMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 3

    const-string v0, "trace"

    const-string v1, "HookMessage [getNextMessage] start"

    .line 187
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "android.os.Message"

    .line 190
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "next"

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 193
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HookMessage [getNextMessage] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNonHandleMessageArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/androidcrashhandler/anr/messageQueue/NonHandleMessage;",
            ">;"
        }
    .end annotation

    .line 204
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->mNonHandleMessageArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static hookActivityThreadHandler()Landroid/os/Handler;
    .locals 6

    const-string v0, "trace"

    const-string v1, "HookMessage [hookActivityThreadHandler] start"

    .line 52
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.ActivityThread"

    .line 56
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentActivityThread"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 57
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 58
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mH"

    .line 59
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    sput-object v2, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HookMessage [hookActivityThreadHandler] Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v1
.end method

.method public static hookMainMessageQueue(Landroid/os/Handler;)Landroid/os/MessageQueue;
    .locals 4

    const-string v0, "trace"

    const-string v1, "HookMessage [hookMainMessageQueue] start"

    .line 23
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "HookMessage [hookMainMessageQueue] handler is null"

    .line 26
    invoke-static {v0, p0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 30
    :cond_0
    sget-object v2, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->mQueue:Landroid/os/MessageQueue;

    if-nez v2, :cond_1

    :try_start_0
    const-string v2, "android.os.Handler"

    .line 32
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mQueue"

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/MessageQueue;

    sput-object p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->mQueue:Landroid/os/MessageQueue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HookMessage [hookMainMessageQueue] Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    :cond_1
    return-object v2
.end method

.method public static isMainThreadBlocked(Landroid/os/MessageQueue;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 92
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mMessages"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "trace"

    if-eqz p0, :cond_1

    .line 96
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anrMessageString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/os/Message;->getWhen()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, -0x7d0

    cmp-long p0, v3, v5

    if-gez p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "mMessage is null"

    .line 106
    invoke-static {v1, p0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method private static parseNonHandleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "HookMessage [parseNonHandleMessage] start"

    .line 160
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, "HookMessage [parseNonHandleMessage] params error"

    .line 163
    invoke-static {v0, p0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/netease/androidcrashhandler/anr/messageQueue/NonHandleMessage;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/NonHandleMessage;-><init>()V

    .line 168
    invoke-virtual {p0}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/NonHandleMessage;->setWhen(J)V

    .line 170
    invoke-virtual {p0}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p0}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/NonHandleMessage;->setCallbackName(Ljava/lang/String;)V

    .line 174
    :cond_1
    iget v1, p0, Landroid/os/Message;->what:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/NonHandleMessage;->setWhat(J)V

    .line 176
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/anr/messageQueue/NonHandleMessage;->setTargetName(Ljava/lang/String;)V

    .line 180
    :cond_2
    iget v1, p0, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/NonHandleMessage;->setArg1(J)V

    .line 181
    iget v1, p0, Landroid/os/Message;->arg2:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/NonHandleMessage;->setArg2(J)V

    .line 182
    iget p0, p0, Landroid/os/Message;->arg1:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/NonHandleMessage;->setBarrier(J)V

    .line 183
    sget-object p0, Lcom/netease/androidcrashhandler/anr/messageQueue/HookMessage;->mNonHandleMessageArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
