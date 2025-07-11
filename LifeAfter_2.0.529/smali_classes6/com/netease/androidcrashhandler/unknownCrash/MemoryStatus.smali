.class public Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;
.super Ljava/lang/Object;
.source "MemoryStatus.java"


# instance fields
.field public apk_mmap:J

.field public art_mmap:J

.field public ashmem:J

.field public dalvikHeapPss:J

.field public dalvikOther:J

.field public dex_mmap:J

.field public memoryAdviceState:I

.field public nativeHeapPss:J

.field public native_status:[I

.field public oat_mmap:J

.field public otherDev:J

.field public other_mmap:J

.field public so_mmap:J

.field public stack:J

.field public systemFreePss:J

.field public systemLowMemory:Z

.field public systemThreshold:J

.field public systemTotalPss:J

.field public totalPss:J

.field public totalSwapPss:J

.field public ttf_mmap:J

.field public unknown:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 46
    iput-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->native_status:[I

    return-void
.end method


# virtual methods
.method public analyze()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->native_status:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->totalPss:J

    const/4 v1, 0x1

    .line 50
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->totalSwapPss:J

    const/4 v1, 0x2

    .line 51
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->nativeHeapPss:J

    const/4 v1, 0x3

    .line 52
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->dalvikHeapPss:J

    const/4 v1, 0x4

    .line 53
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->dalvikOther:J

    const/4 v1, 0x5

    .line 54
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->stack:J

    const/4 v1, 0x6

    .line 55
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->ashmem:J

    const/4 v1, 0x7

    .line 56
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->otherDev:J

    const/16 v1, 0x8

    .line 57
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->so_mmap:J

    const/16 v1, 0x9

    .line 58
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->apk_mmap:J

    const/16 v1, 0xa

    .line 59
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->ttf_mmap:J

    const/16 v1, 0xb

    .line 60
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->dex_mmap:J

    const/16 v1, 0xc

    .line 61
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->oat_mmap:J

    const/16 v1, 0xd

    .line 62
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->art_mmap:J

    const/16 v1, 0xe

    .line 63
    aget v1, v0, v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->other_mmap:J

    const/16 v1, 0xf

    .line 64
    aget v0, v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->unknown:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MemoryStatus{totalPss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->totalPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalSwapPss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->totalSwapPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", systemTotalPss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->systemTotalPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", systemFreePss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->systemFreePss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nativeHeapPss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->nativeHeapPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dalvikHeapPss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->dalvikHeapPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dalvikOther="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->dalvikOther:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->stack:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ashmem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->ashmem:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", otherDev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->otherDev:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", so_mmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->so_mmap:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", apk_mmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->apk_mmap:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ttf_mmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->ttf_mmap:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dex_mmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->dex_mmap:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", oat_mmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->oat_mmap:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", art_mmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->art_mmap:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", other_mmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->other_mmap:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/unknownCrash/MemoryStatus;->unknown:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
