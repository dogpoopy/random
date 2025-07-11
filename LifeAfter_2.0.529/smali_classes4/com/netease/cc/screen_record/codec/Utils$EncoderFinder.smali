.class final Lcom/netease/cc/screen_record/codec/Utils$EncoderFinder;
.super Landroid/os/AsyncTask;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/screen_record/codec/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EncoderFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/media/MediaCodecInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private func:Lcom/netease/cc/screen_record/codec/Utils$Callback;


# direct methods
.method constructor <init>(Lcom/netease/cc/screen_record/codec/Utils$Callback;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/Utils$EncoderFinder;->func:Lcom/netease/cc/screen_record/codec/Utils$Callback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/Utils$EncoderFinder;->doInBackground([Ljava/lang/String;)[Landroid/media/MediaCodecInfo;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[Landroid/media/MediaCodecInfo;
    .locals 1

    const/4 v0, 0x0

    .line 45
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/Utils;->findEncodersByType(Ljava/lang/String;)[Landroid/media/MediaCodecInfo;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, [Landroid/media/MediaCodecInfo;

    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/Utils$EncoderFinder;->onPostExecute([Landroid/media/MediaCodecInfo;)V

    return-void
.end method

.method protected onPostExecute([Landroid/media/MediaCodecInfo;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/Utils$EncoderFinder;->func:Lcom/netease/cc/screen_record/codec/Utils$Callback;

    invoke-interface {v0, p1}, Lcom/netease/cc/screen_record/codec/Utils$Callback;->onResult([Landroid/media/MediaCodecInfo;)V

    return-void
.end method
