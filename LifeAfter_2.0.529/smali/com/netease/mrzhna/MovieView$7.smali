.class Lcom/netease/mrzhna/MovieView$7;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/MovieView;->playVideo(Ljava/lang/String;IIIIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/MovieView;

.field final synthetic val$height:I

.field final synthetic val$in_asset:Z

.field final synthetic val$left:I

.field final synthetic val$top:I

.field final synthetic val$video_mode:I

.field final synthetic val$video_path:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/MovieView;IIIIIZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lcom/netease/mrzhna/MovieView$7;->this$0:Lcom/netease/mrzhna/MovieView;

    iput p2, p0, Lcom/netease/mrzhna/MovieView$7;->val$video_mode:I

    iput p3, p0, Lcom/netease/mrzhna/MovieView$7;->val$left:I

    iput p4, p0, Lcom/netease/mrzhna/MovieView$7;->val$top:I

    iput p5, p0, Lcom/netease/mrzhna/MovieView$7;->val$width:I

    iput p6, p0, Lcom/netease/mrzhna/MovieView$7;->val$height:I

    iput-boolean p7, p0, Lcom/netease/mrzhna/MovieView$7;->val$in_asset:Z

    iput-object p8, p0, Lcom/netease/mrzhna/MovieView$7;->val$video_path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 270
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView$7;->this$0:Lcom/netease/mrzhna/MovieView;

    invoke-static {v0}, Lcom/netease/mrzhna/MovieView;->access$200(Lcom/netease/mrzhna/MovieView;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView$7;->this$0:Lcom/netease/mrzhna/MovieView;

    invoke-static {v0}, Lcom/netease/mrzhna/MovieView;->access$300(Lcom/netease/mrzhna/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 273
    iget v0, p0, Lcom/netease/mrzhna/MovieView$7;->val$video_mode:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView$7;->this$0:Lcom/netease/mrzhna/MovieView;

    invoke-static {v0}, Lcom/netease/mrzhna/MovieView;->access$000(Lcom/netease/mrzhna/MovieView;)Lcom/netease/mrzhna/MovieDialog;

    move-result-object v0

    iget v1, p0, Lcom/netease/mrzhna/MovieView$7;->val$left:I

    iget v2, p0, Lcom/netease/mrzhna/MovieView$7;->val$top:I

    iget v3, p0, Lcom/netease/mrzhna/MovieView$7;->val$width:I

    iget v4, p0, Lcom/netease/mrzhna/MovieView$7;->val$height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mrzhna/MovieDialog;->setBounds(IIII)V

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView$7;->this$0:Lcom/netease/mrzhna/MovieView;

    invoke-static {v0}, Lcom/netease/mrzhna/MovieView;->access$600(Lcom/netease/mrzhna/MovieView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 286
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView$7;->this$0:Lcom/netease/mrzhna/MovieView;

    invoke-static {v0}, Lcom/netease/mrzhna/MovieView;->access$300(Lcom/netease/mrzhna/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView$7;->this$0:Lcom/netease/mrzhna/MovieView;

    invoke-static {v0}, Lcom/netease/mrzhna/MovieView;->access$000(Lcom/netease/mrzhna/MovieView;)Lcom/netease/mrzhna/MovieDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mrzhna/MovieDialog;->show()V

    .line 291
    iget-boolean v0, p0, Lcom/netease/mrzhna/MovieView$7;->val$in_asset:Z

    const-string v1, "NeoX:MediaPlayer "

    if-eqz v0, :cond_2

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView$7;->this$0:Lcom/netease/mrzhna/MovieView;

    invoke-static {v0}, Lcom/netease/mrzhna/MovieView;->access$100(Lcom/netease/mrzhna/MovieView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mrzhna/MovieView$7;->val$video_path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 296
    iget-object v2, p0, Lcom/netease/mrzhna/MovieView$7;->this$0:Lcom/netease/mrzhna/MovieView;

    invoke-static {v2}, Lcom/netease/mrzhna/MovieView;->access$300(Lcom/netease/mrzhna/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 297
    iget-object v0, p0, Lcom/netease/mrzhna/MovieView$7;->this$0:Lcom/netease/mrzhna/MovieView;

    invoke-static {v0}, Lcom/netease/mrzhna/MovieView;->access$300(Lcom/netease/mrzhna/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "play video in asset error"

    .line 304
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 310
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/netease/mrzhna/MovieView$7;->val$video_path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 311
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 312
    iget-object v3, p0, Lcom/netease/mrzhna/MovieView$7;->this$0:Lcom/netease/mrzhna/MovieView;

    invoke-static {v3}, Lcom/netease/mrzhna/MovieView;->access$300(Lcom/netease/mrzhna/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 313
    iget-object v2, p0, Lcom/netease/mrzhna/MovieView$7;->this$0:Lcom/netease/mrzhna/MovieView;

    invoke-static {v2}, Lcom/netease/mrzhna/MovieView;->access$300(Lcom/netease/mrzhna/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 314
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "play video error"

    .line 320
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
