.class public final synthetic Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$EVucVyn1ewy9z-pPQKqzEjXnOvc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$EVucVyn1ewy9z-pPQKqzEjXnOvc;->f$0:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$EVucVyn1ewy9z-pPQKqzEjXnOvc;->f$0:Landroid/os/ParcelFileDescriptor;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Landroidx/camera/video/Recorder$RecordingRecord;->lambda$initializeRecording$5(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;)V

    return-void
.end method
