.class public Lcom/atmos/daxappUI/EqualizerAdapter;
.super Landroid/widget/BaseAdapter;
.source "EqualizerAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atmos/daxappUI/EqualizerAdapter$IPresetListener;
    }
.end annotation


# instance fields
.field private mDobyOn:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayout:I

.field private final mListener:Lcom/atmos/daxappUI/EqualizerAdapter$IPresetListener;

.field private mNewLayout:Z

.field private final mNotifyDataSetChanged:Ljava/lang/Runnable;

.field private final mSelectedBg:Landroid/graphics/drawable/Drawable;

.field private mSelectedPosition:I

.field private final mSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/atmos/daxappUI/EqualizerSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/atmos/daxappUI/EqualizerAdapter$IPresetListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "listener"    # Lcom/atmos/daxappUI/EqualizerAdapter$IPresetListener;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSelectedPosition:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mDobyOn:Z

    .line 44
    iput-boolean v2, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mNewLayout:Z

    .line 146
    new-instance v0, Lcom/atmos/daxappUI/EqualizerAdapter$1;

    invoke-direct {v0, p0}, Lcom/atmos/daxappUI/EqualizerAdapter$1;-><init>(Lcom/atmos/daxappUI/EqualizerAdapter;)V

    iput-object v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    iput-object p3, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mListener:Lcom/atmos/daxappUI/EqualizerAdapter$IPresetListener;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSelectedBg:Landroid/graphics/drawable/Drawable;

    .line 61
    iput p2, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mLayout:I

    .line 62
    iput v2, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSelectedPosition:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mNewLayout:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    .line 67
    iget-object v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/atmos/daxappUI/EqualizerSetting;

    const v2, 0x7f060011

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020019

    const v4, 0x7f020017

    const v5, 0x7f020018

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/atmos/daxappUI/EqualizerSetting;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/atmos/daxappUI/EqualizerSetting;

    const v2, 0x7f060012

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02001c

    const v4, 0x7f02001a

    const v5, 0x7f02001b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/atmos/daxappUI/EqualizerSetting;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/atmos/daxappUI/EqualizerSetting;

    const v2, 0x7f060013

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02001f

    const v4, 0x7f02001d

    const v5, 0x7f02001e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/atmos/daxappUI/EqualizerSetting;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-boolean v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mNewLayout:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    new-instance v1, Lcom/atmos/daxappUI/EqualizerSetting;

    const v2, 0x7f060015

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020022

    const v4, 0x7f020020

    const v5, 0x7f020021

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/atmos/daxappUI/EqualizerSetting;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/atmos/daxappUI/EqualizerSetting;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/EqualizerSetting;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/atmos/daxappUI/EqualizerAdapter;->getItem(I)Lcom/atmos/daxappUI/EqualizerSetting;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSelectedPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 93
    move-object v3, p2

    .line 95
    .local v3, "row":Landroid/view/View;
    if-nez p2, :cond_0

    .line 96
    iget-object v6, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mLayout:I

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 97
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    :cond_0
    iget-object v6, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/atmos/daxappUI/EqualizerSetting;

    .line 101
    .local v2, "item":Lcom/atmos/daxappUI/EqualizerSetting;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    .line 102
    .local v0, "enabled":Z
    iget v6, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSelectedPosition:I

    if-ne p1, v6, :cond_2

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .line 103
    .local v4, "selected":Z
    :goto_0
    const v6, 0x7f0c0002

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 105
    .local v1, "icon":Landroid/widget/ImageView;
    invoke-virtual {v2, v4, v0}, Lcom/atmos/daxappUI/EqualizerSetting;->getIcon(ZZ)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-boolean v6, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mNewLayout:Z

    if-eqz v6, :cond_3

    .line 108
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSelectedBg:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    return-object v3

    .line 102
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v4    # "selected":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 110
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v4    # "selected":Z
    :cond_3
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSelectedBg:Landroid/graphics/drawable/Drawable;

    :cond_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "DsUI::MainActivity"

    const-string v1, "EqualizerAdapter.notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 138
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    iget-boolean v4, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mDobyOn:Z

    if-nez v4, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v2

    .line 160
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 161
    .local v0, "action":I
    if-eqz v0, :cond_2

    if-ne v3, v0, :cond_0

    .line 162
    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mListener:Lcom/atmos/daxappUI/EqualizerAdapter$IPresetListener;

    if-eqz v2, :cond_3

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 164
    .local v1, "nPos":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 165
    iget-object v2, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mListener:Lcom/atmos/daxappUI/EqualizerAdapter$IPresetListener;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/atmos/daxappUI/EqualizerAdapter$IPresetListener;->onPresetChanged(I)V

    .end local v1    # "nPos":Ljava/lang/Integer;
    :cond_3
    move v2, v3

    .line 168
    goto :goto_0
.end method

.method public scheduleNotifyDataSetChanged()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "DsUI::MainActivity"

    const-string v1, "EqualizerAdapter.scheduleNotifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v0, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    sget-object v0, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public setDolbyOnOff(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mDobyOn:Z

    .line 132
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 124
    iget v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSelectedPosition:I

    if-eq v0, p1, :cond_0

    .line 125
    iput p1, p0, Lcom/atmos/daxappUI/EqualizerAdapter;->mSelectedPosition:I

    .line 126
    invoke-virtual {p0}, Lcom/atmos/daxappUI/EqualizerAdapter;->scheduleNotifyDataSetChanged()V

    .line 128
    :cond_0
    return-void
.end method
