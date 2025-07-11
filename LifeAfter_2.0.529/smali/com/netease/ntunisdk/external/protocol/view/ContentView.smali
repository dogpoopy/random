.class public Lcom/netease/ntunisdk/external/protocol/view/ContentView;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;


# static fields
.field public static final BOTTOM_ONE_BUTTON:I = 0x1

.field public static final BOTTOM_TWO_BUTTON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ContentView"

.field private static final TEXT_PAINT_SIZE:I = 0x29


# instance fields
.field private mContentText:Landroid/text/Spanned;

.field private mContentTextLength:I

.field private mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

.field private mCurPage:I

.field private mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

.field private mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

.field private mHasNextPage:Z

.field private mInitPageFlag:Z

.field private mIsSubProtocol:Z

.field private mLeftPageBtn:Landroid/widget/ImageView;

.field private mPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPageTextView:Landroid/widget/TextView;

.field private mParent:Ljava/lang/String;

.field private mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

.field private mProtocolProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

.field private mProtocolType:I

.field private mRightPageBtn:Landroid/widget/ImageView;

.field private mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

.field private mShowedFirstCharPos:I

.field private mShowedLastCharPos:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextViewHeight:I

.field private mTextViewWidth:I

.field private mTotalPage:I

.field private mUrlSpans:[Landroid/text/style/URLSpan;

.field private mView:Landroid/view/View;

.field private mViewStyle:I

.field private pageLine:I

.field private unShowWholeLayout:Landroid/text/StaticLayout;


# direct methods
.method public constructor <init>(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;ILcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;ZLandroid/text/Spanned;[Landroid/text/style/URLSpan;Ljava/lang/String;I)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    .line 58
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mInitPageFlag:Z

    .line 81
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    .line 82
    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    .line 83
    iput p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolType:I

    .line 84
    iput-boolean p5, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mIsSubProtocol:Z

    .line 85
    iput-object p4, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    .line 86
    iput-object p7, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mUrlSpans:[Landroid/text/style/URLSpan;

    .line 87
    iput-object p6, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    .line 88
    iput-object p8, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mParent:Ljava/lang/String;

    .line 89
    iput p9, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mViewStyle:I

    .line 90
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->resetParams()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mIsSubProtocol:Z

    return p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Lcom/netease/ntunisdk/external/protocol/view/EventCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mParent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->initTextPage()V

    return-void
.end method

.method private crateTextPage()Landroid/text/StaticLayout;
    .locals 11

    .line 450
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    if-nez v0, :cond_6

    .line 452
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewWidth:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    .line 454
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewHeight:I

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageLine ==== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentView"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 457
    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    .line 459
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    .line 463
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 464
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    mul-int v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    .line 469
    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextLength:I

    if-lt v0, v2, :cond_3

    .line 470
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    goto :goto_0

    .line 472
    :cond_3
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    invoke-direct {p0, v3, v0, v2}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->safeSubSequence(Landroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_4

    .line 474
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    goto :goto_0

    .line 476
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 478
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    goto :goto_0

    :cond_5
    const-string v2, "\n"

    const-string v3, ""

    .line 480
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 482
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    :cond_6
    :goto_0
    const/4 v0, -0x1

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    iget v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    mul-int v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v0, :cond_7

    .line 495
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextLength:I

    if-gt v1, v0, :cond_7

    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    if-ne v0, v2, :cond_8

    .line 496
    :cond_7
    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextLength:I

    .line 500
    :cond_8
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedLastCharPos:I

    invoke-direct {p0, v0, v2, v1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->safeSubSequence(Landroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 502
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v5, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewWidth:I

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 504
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedLastCharPos:I

    return-object v0
.end method

.method private getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private hasNextPage()Z
    .locals 5

    .line 512
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedLastCharPos:I

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextLength:I

    const/4 v2, 0x0

    const-string v3, "ContentView"

    if-lt v0, v1, :cond_0

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShowedLastCharPos ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedLastCharPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    return v2

    .line 518
    :cond_0
    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    invoke-direct {p0, v4, v0, v1}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->safeSubSequence(Landroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 519
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const-string v0, "unShowWholeText is empty"

    .line 520
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    return v2
.end method

.method private initTextPage()V
    .locals 5

    .line 284
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mInitPageFlag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mInitPageFlag:Z

    .line 289
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextPaint:Landroid/text/TextPaint;

    .line 291
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextPaint:Landroid/text/TextPaint;

    const-string v2, "#23b260"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    const/high16 v1, 0x42240000    # 41.0f

    .line 293
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    iget v2, v2, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDensity:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    mul-float v2, v2, v1

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textSize = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ContentView"

    invoke-static {v3, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 298
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewWidth:I

    .line 299
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewHeight:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 300
    iget v4, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTextViewHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "mTextViewWidth = %d,mTextViewHeight = %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    .line 303
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->crateTextPage()Landroid/text/StaticLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->setLayout(Landroid/text/StaticLayout;)V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mLeftPageBtn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->hasNextPage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mHasNextPage:Z

    .line 309
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->updatePageText()V

    .line 310
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mHasNextPage:Z

    if-nez v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private safeSubSequence(Landroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 540
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private updatePageText()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    iget-object v0, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mParent:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewStyle()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mViewStyle:I

    return v0
.end method

.method public isSubProtocol()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mIsSubProtocol:Z

    return v0
.end method

.method public nextPage()V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 413
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    .line 414
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->updatePageText()V

    const/4 v0, 0x0

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 420
    :catch_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->crateTextPage()Landroid/text/StaticLayout;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 425
    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedFirstCharPos:I

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->getLayout()Landroid/text/StaticLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedFirstCharPos:I

    .line 426
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->setLayout(Landroid/text/StaticLayout;)V

    .line 430
    :cond_1
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    const/4 v1, 0x4

    if-lez v0, :cond_2

    .line 431
    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    if-ne v2, v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 436
    :cond_2
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->hasNextPage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mHasNextPage:Z

    .line 437
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mHasNextPage:Z

    if-nez v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    :cond_3
    :goto_1
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 445
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mLeftPageBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/content/Context;Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Lcom/netease/ntunisdk/external/protocol/view/EventCallback;)Landroid/view/View;
    .locals 10

    .line 116
    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mDialogInfo:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;

    .line 117
    iput-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    .line 118
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string p3, "uni_p_view"

    const-string v0, "layout"

    invoke-direct {p0, p1, p3, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 120
    iget p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolType:I

    const-string v0, "drawable"

    const-string v1, "uni_p_logo_iv"

    const/4 v2, 0x1

    const-string v3, "id"

    if-ne v2, p3, :cond_0

    .line 122
    invoke-direct {p0, p1, v1, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const-string v1, "unisdk_protocol_logo_long"

    .line 123
    invoke-direct {p0, p1, v1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v4, p3, :cond_1

    .line 126
    invoke-direct {p0, p1, v1, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const-string v1, "unisdk_protocol_logo_envoy"

    .line 127
    invoke-direct {p0, p1, v1, v0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    iget-object p3, p3, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->globalInfo:Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;

    const-string v0, "uni_p_reject_btn"

    const-string v1, "uni_p_accept_btn"

    const-string v4, "uni_p_confirm_btn"

    if-eqz p3, :cond_4

    .line 153
    iget-object v5, p3, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->confirm:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 154
    invoke-direct {p0, p1, v4, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 155
    iget-object v6, p3, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->confirm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_2
    iget-object v5, p3, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->accept:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 160
    invoke-direct {p0, p1, v1, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 161
    iget-object v6, p3, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->accept:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_3
    iget-object v5, p3, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->reject:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 166
    invoke-direct {p0, p1, v0, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 167
    iget-object p3, p3, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->reject:Ljava/lang/String;

    invoke-virtual {v5, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_4
    iget-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {p3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getShowAgreeLineFlag()Ljava/lang/String;

    move-result-object p3

    const-string v5, "1"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v5, 0x0

    if-eqz p3, :cond_5

    .line 173
    iget-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {p3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getAgreeLineText()Ljava/lang/String;

    move-result-object p3

    .line 174
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "protocol_agree_tv"

    .line 175
    invoke-direct {p0, p1, v6, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 177
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_5
    iget p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mViewStyle:I

    const-string v6, "uni_p_reject_ll"

    const-string v7, "uni_p_accept_ll"

    const-string v8, "uni_p_confirm_ll"

    const/16 v9, 0x8

    if-ne p3, v2, :cond_6

    .line 186
    invoke-direct {p0, p1, v8, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-direct {p0, p1, v7, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-direct {p0, p1, v6, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 189
    invoke-direct {p0, p1, v4, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 190
    invoke-virtual {p3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView$1;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 209
    :cond_6
    invoke-direct {p0, p1, v8, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-direct {p0, p1, v7, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 211
    invoke-direct {p0, p1, v6, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 212
    invoke-direct {p0, p1, v1, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 213
    invoke-direct {p0, p1, v0, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 214
    invoke-virtual {p3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    new-instance v1, Lcom/netease/ntunisdk/external/protocol/view/ContentView$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView$2;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 224
    new-instance p3, Lcom/netease/ntunisdk/external/protocol/view/ContentView$3;

    invoke-direct {p3, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView$3;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const-string p3, "uni_p_page_tv"

    .line 235
    invoke-direct {p0, p1, p3, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageTextView:Landroid/widget/TextView;

    const-string p3, "uni_p_left_btn"

    .line 236
    invoke-direct {p0, p1, p3, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mLeftPageBtn:Landroid/widget/ImageView;

    .line 237
    iget-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mLeftPageBtn:Landroid/widget/ImageView;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$4;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView$4;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p3, "uni_p_right_btn"

    .line 243
    invoke-direct {p0, p1, p3, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    .line 244
    iget-object p3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    new-instance v0, Lcom/netease/ntunisdk/external/protocol/view/ContentView$5;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView$5;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p3, "uni_p_tv"

    .line 252
    invoke-direct {p0, p1, p3, v3}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    .line 253
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->addOnPageListener(Lcom/netease/ntunisdk/external/protocol/view/ProtocolView$OnPageListener;)V

    .line 255
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 256
    new-instance p3, Lcom/netease/ntunisdk/external/protocol/view/ContentView$6;

    invoke-direct {p3, p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView$6;-><init>(Lcom/netease/ntunisdk/external/protocol/view/ContentView;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 264
    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mView:Landroid/view/View;

    return-object p2
.end method

.method public openLink(I)V
    .locals 10

    .line 363
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mUrlSpans:[Landroid/text/style/URLSpan;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 366
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedFirstCharPos:I

    add-int/2addr v0, p1

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wholeOff  = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ContentView"

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextLength:I

    if-lt v0, p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 374
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mUrlSpans:[Landroid/text/style/URLSpan;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 375
    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    invoke-interface {v6, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 376
    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 377
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "spanStart  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "spanEnd  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v0, v6, :cond_2

    if-gt v0, v7, :cond_2

    move-object p1, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p1, :cond_6

    .line 385
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mProtocolInfo:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->findProtocolByUrl(Ljava/lang/String;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 394
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    if-eqz p1, :cond_6

    .line 395
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mScene:Lcom/netease/ntunisdk/external/protocol/Scene;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v0, v2}, Lcom/netease/ntunisdk/external/protocol/view/EventCallback;->next(Lcom/netease/ntunisdk/external/protocol/Scene;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;I)V

    goto :goto_2

    .line 399
    :cond_5
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mEventCallback:Lcom/netease/ntunisdk/external/protocol/view/EventCallback;

    if-eqz v0, :cond_6

    .line 400
    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/external/protocol/view/EventCallback;->openBrowser(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public prePage()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mLeftPageBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 330
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    .line 331
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->updatePageText()V

    const/4 v0, 0x0

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_1

    .line 339
    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedFirstCharPos:I

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedFirstCharPos:I

    .line 340
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextView:Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/external/protocol/view/ProtocolView;->setLayout(Landroid/text/StaticLayout;)V

    .line 344
    :cond_1
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    if-ne v0, v1, :cond_2

    .line 346
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mLeftPageBtn:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    :cond_2
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    if-lez v0, :cond_3

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    sub-int/2addr v0, v1

    if-ne v2, v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mRightPageBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public resetParams()V
    .locals 2

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mInitPageFlag:Z

    .line 95
    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->pageLine:I

    .line 96
    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mTotalPage:I

    const/4 v1, 0x1

    .line 97
    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mCurPage:I

    .line 98
    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedLastCharPos:I

    .line 99
    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mShowedFirstCharPos:I

    .line 100
    iput-boolean v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mHasNextPage:Z

    .line 101
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentText:Landroid/text/Spanned;

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mContentTextLength:I

    .line 103
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->mPageList:Ljava/util/ArrayList;

    .line 107
    :cond_0
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentView;->unShowWholeLayout:Landroid/text/StaticLayout;

    return-void
.end method
