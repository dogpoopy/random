.class public Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;
.super Ljava/lang/Object;
.source "MemoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager$MemoryInterface;
    }
.end annotation


# static fields
.field private static MANAGER:Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;

.field private static memoryInterface:Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager$MemoryInterface;

.field private static status:Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->MANAGER:Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;

    .line 19
    new-instance v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->status:Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    .line 23
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const-string v0, "unitrace_memory_advice"

    .line 24
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFreeMem(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 7

    const-wide/16 v0, -0x1

    .line 170
    :try_start_0
    iget-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 172
    iget-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    .line 174
    :cond_0
    sget-object p1, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->status:Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    iput-wide v0, p1, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->systemFreePss:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    :goto_0
    sget-object p1, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->status:Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    iget-wide v0, p1, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->systemFreePss:J

    return-wide v0
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;
    .locals 1

    .line 36
    sget-object v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->MANAGER:Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;

    return-object v0
.end method

.method private getSystemTotalMemory(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 5

    .line 117
    :try_start_0
    sget-object v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->status:Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    iget-wide v0, v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->systemTotalPss:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 118
    iget-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 119
    sget-object v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->status:Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->getTotalMemory()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->systemTotalPss:J

    goto :goto_0

    .line 121
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->status:Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    iget-wide v1, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->systemTotalPss:J

    :goto_0
    const-string v0, "trace"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemTotalMemory======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->status:Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    iget-wide v2, v2, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->systemTotalPss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "======="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    :cond_1
    :goto_1
    sget-object p1, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->status:Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    iget-wide v0, p1, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->systemTotalPss:J

    return-wide v0
.end method

.method private getTotalMemory()J
    .locals 6

    const-string v0, "trace"

    const-string v1, "[MemoryManager] getTotalMemory start"

    .line 133
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/proc/meminfo"

    const-wide/16 v2, 0x0

    .line 141
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 143
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 145
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long v2, v2, v4

    .line 146
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiInfo [getTotalMemory] Exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v1

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiInfo [getTotalMemory] IOException="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    :goto_0
    return-wide v2
.end method

.method public static native memoryAdviceInit(Landroid/content/Context;)I
.end method

.method public static onMemoryStateChanged(IIJ)V
    .locals 0

    .line 68
    sget-object p2, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->memoryInterface:Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager$MemoryInterface;

    if-eqz p2, :cond_0

    .line 69
    invoke-interface {p2, p0, p1}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager$MemoryInterface;->onMemoryStateChanged(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPssMemory()J
    .locals 5

    .line 81
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 82
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 83
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v0, v3, v2

    .line 84
    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 85
    aget-object v0, v0, v2

    const-string v1, "summary.graphics"

    .line 86
    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 88
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->status:Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v3

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->totalPss:J

    const-string v0, "trace"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MemoryStatus] getFullStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->status:Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    iget-wide v2, v2, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->totalPss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    :goto_0
    sget-object v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->status:Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    iget-wide v0, v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->totalPss:J

    return-wide v0
.end method

.method public getStatus()Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;
    .locals 2

    .line 98
    :try_start_0
    invoke-static {}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->sharedKit()Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/NTCrashHunterKit;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 99
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 101
    invoke-direct {p0, v1}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->getSystemTotalMemory(Landroid/app/ActivityManager$MemoryInfo;)J

    .line 102
    invoke-direct {p0, v1}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->getFreeMem(Landroid/app/ActivityManager$MemoryInfo;)J

    .line 103
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->getPssMemory()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    :goto_0
    sget-object v0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->status:Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;

    return-object v0
.end method

.method public registerMemoryState(Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager$MemoryInterface;)V
    .locals 0

    .line 43
    sput-object p1, Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager;->memoryInterface:Lcom/netease/androidcrashhandler/unknownCrash/MemoryManager$MemoryInterface;

    return-void
.end method

.method public native registerMemoryWater()I
.end method
