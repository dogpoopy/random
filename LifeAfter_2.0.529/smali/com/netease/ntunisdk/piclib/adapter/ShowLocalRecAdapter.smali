.class public Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;
.super Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;
.source "ShowLocalRecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
        "Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShowLocalRecAdapter"


# instance fields
.field private currentDataTag:Ljava/lang/String;

.field private fragment:Landroidx/fragment/app/Fragment;

.field private hasCamera:Z

.field private holderView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:I

.field protected showHeight:I

.field private singleJumpClip:Z

.field private final theLayout:Ljava/lang/String;

.field private videoMarkResId:I

.field private videoMaxSelectDurationTips:Ljava/lang/String;

.field private videoMaxSelectSizeTips:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;IZILcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragment",
            "showHeight",
            "hasCamera",
            "maxSize",
            "selectedHolder",
            "context",
            "singleJumpClip",
            "videoMaxSelectDurationTips",
            "videoMaxSelectSizeTips"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p5, p6}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;-><init>(Ljava/util/List;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;Landroid/content/Context;)V

    const-string p5, "item_us_show"

    .line 39
    iput-object p5, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->theLayout:Ljava/lang/String;

    .line 49
    new-instance p5, Ljava/util/LinkedList;

    invoke-direct {p5}, Ljava/util/LinkedList;-><init>()V

    iput-object p5, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->holderView:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->fragment:Landroidx/fragment/app/Fragment;

    .line 55
    iput-boolean p3, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->hasCamera:Z

    .line 56
    iput p2, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->showHeight:I

    .line 57
    iput p4, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->maxSize:I

    .line 58
    iput-boolean p7, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->singleJumpClip:Z

    .line 59
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "png_us_picedit_video_mark"

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->videoMarkResId:I

    .line 60
    iput-object p8, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->videoMaxSelectDurationTips:Ljava/lang/String;

    .line 61
    iput-object p9, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->videoMaxSelectSizeTips:Ljava/lang/String;

    return-void
.end method

.method private format(J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    const-wide/16 v0, 0x3e8

    .line 202
    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 206
    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized addAllData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCurrentDataTag()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->currentDataTag:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$onCreateViewHolder$0$ShowLocalRecAdapter(Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;Landroid/view/View;)V
    .locals 2

    .line 94
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 95
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->data:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 96
    iget-boolean v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overDuration:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->videoMaxSelectDurationTips:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 100
    :cond_0
    iget-boolean v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    if-eqz v0, :cond_1

    .line 101
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->videoMaxSelectSizeTips:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->onItemTouchListener:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->onItemTouchListener:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;

    invoke-interface {v0, p2, p0, p1}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;->onItemClick(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    sget-object p2, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateViewHolder -> e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreateViewHolder$1$ShowLocalRecAdapter(Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;Landroid/view/View;)V
    .locals 2

    .line 110
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 111
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->data:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 112
    iget-boolean v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overDuration:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->videoMaxSelectDurationTips:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 116
    :cond_0
    iget-boolean v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->videoMaxSelectSizeTips:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->onItemTouchListener:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->onItemTouchListener:Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;

    invoke-interface {v0, p2, p0, p1}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;->onItemSelected(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 35
    check-cast p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->onBindViewHolder(Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 137
    invoke-super {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 138
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 139
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->ivMediaType:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->tvMediaTypeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->unavailableItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->resId:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->flSelectedClick:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->ivMediaType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->singleJumpClip:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->flSelectedClick:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->flSelectedClick:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 151
    :goto_0
    iget v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->vSelectedBg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->tvSelectedIndex:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 154
    iget v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->maxSize:I

    if-le v0, v2, :cond_3

    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->tvSelectedIndex:Landroid/widget/TextView;

    iget v4, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 156
    :cond_2
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->vSelectedBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->tvSelectedIndex:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 158
    iget v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->maxSize:I

    if-le v0, v2, :cond_3

    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->tvSelectedIndex:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_3
    :goto_1
    sget-object v0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$1;->$SwitchMap$com$netease$ntunisdk$piclib$constant$ConstLegacy$MediaType:[I

    iget-object v4, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    goto :goto_3

    .line 167
    :cond_4
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->ivMediaType:Landroid/widget/ImageView;

    iget v2, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->videoMarkResId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->ivMediaType:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->tvMediaTypeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->tvMediaTypeInfo:Landroid/widget/TextView;

    iget v2, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->duration:I

    int-to-long v4, v2

    invoke-direct {p0, v4, v5}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-boolean v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overSize:Z

    if-nez v0, :cond_6

    iget-boolean v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->overDuration:Z

    if-eqz v0, :cond_5

    goto :goto_2

    .line 174
    :cond_5
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->unavailableItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 172
    :cond_6
    :goto_2
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->unavailableItem:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 162
    :cond_7
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->tvMediaTypeInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->tvMediaTypeInfo:Landroid/widget/TextView;

    const-string v2, "GIF"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->unavailableItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :goto_3
    iget-object v0, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    if-eqz v0, :cond_8

    .line 180
    invoke-static {}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->getLoader()Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->ivShowImage:Lcom/netease/ntunisdk/piclib/view/TagImageView;

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->editedEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    sget-object v1, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->MICRO:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    invoke-virtual {v0, p1, p2, v1, v3}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->loadBitmap(Lcom/netease/ntunisdk/piclib/view/TagImageView;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;Z)V

    goto :goto_4

    .line 182
    :cond_8
    invoke-static {}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->getLoader()Lcom/netease/ntunisdk/piclib/loader/ImageLoader;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->ivShowImage:Lcom/netease/ntunisdk/piclib/view/TagImageView;

    sget-object v1, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->MICRO:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    invoke-virtual {v0, p1, p2, v1, v3}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader;->loadBitmap(Lcom/netease/ntunisdk/piclib/view/TagImageView;Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;Z)V

    :goto_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "item_us_show"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 88
    iget v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->showHeight:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->holderView:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance p2, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;

    invoke-direct {p2, p1}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 92
    iget-object p1, p2, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->vItemClick:Landroid/view/View;

    new-instance v0, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$ShowLocalRecAdapter$y-tz3Uy13eW_tlmWELczeNy70Wc;

    invoke-direct {v0, p0, p2}, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$ShowLocalRecAdapter$y-tz3Uy13eW_tlmWELczeNy70Wc;-><init>(Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p2, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;->flSelectedClick:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$ShowLocalRecAdapter$xjF2oQAxCI9rdYKSf69mXYADXKU;

    invoke-direct {v0, p0, p2}, Lcom/netease/ntunisdk/piclib/adapter/-$$Lambda$ShowLocalRecAdapter$xjF2oQAxCI9rdYKSf69mXYADXKU;-><init>(Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter$BaseViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public resetData(Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bucketEntity"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 70
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->mediaList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->hasCamera:Z

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-direct {v0}, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "png_us_picedit_camera"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->resId:I

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->uri:Landroid/net/Uri;

    .line 76
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->data:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->data:Ljava/util/List;

    iget-object v1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->mediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->tag:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->currentDataTag:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setShowHeight(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 126
    iget v0, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->showHeight:I

    if-ne v0, p1, :cond_0

    return-void

    .line 127
    :cond_0
    iput p1, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->showHeight:I

    .line 128
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->holderView:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 130
    iget v2, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->showHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateItem(Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entityInfo"
        }
    .end annotation

    .line 193
    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->state:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    sget-object v1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->UPDATE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->state:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    sget-object v1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->REMOVE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterPosition:I

    if-ltz v0, :cond_1

    .line 195
    iget p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->adapterPosition:I

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/EntityInfoWithAdapter;->state:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    sget-object v0, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->ADD:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    if-ne p1, v0, :cond_2

    .line 197
    iget-boolean p1, p0, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->hasCamera:Z

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->notifyItemInserted(I)V

    :cond_2
    :goto_0
    return-void
.end method
