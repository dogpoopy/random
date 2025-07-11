.class Lcom/netease/mrzhna/InputView$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "InputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/InputView;->addLengthFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/InputView;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/InputView;I)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/netease/mrzhna/InputView$1;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    .line 142
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v0

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    sub-int v1, p6, p5

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/netease/mrzhna/InputView$1;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v1}, Lcom/netease/mrzhna/InputView;->access$000(Lcom/netease/mrzhna/InputView;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/netease/mrzhna/InputView$1;->this$0:Lcom/netease/mrzhna/InputView;

    invoke-static {v0}, Lcom/netease/mrzhna/InputView;->access$000(Lcom/netease/mrzhna/InputView;)I

    move-result v0

    invoke-static {v0}, Lcom/netease/neox/NativeInterface;->NativeOnInputLimit(I)V

    .line 146
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
